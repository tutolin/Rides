//
//  VehicleListViewModel.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

@MainActor
class VehicleListViewModel: ObservableObject {
    @Published var vehicles: [Vehicle] = []
    @Published var isLoading = false
    @Published var vehicleCount: String = ""
    @Published var sortOrder: SortOrder = .vin
    @Published var alertItem: AlertItem?
 
    var inputIsValid: Bool {
        guard let count = Int(vehicleCount) else { return false }
        return (1...100).contains(count)
    }
    
    private let service: VehicleServiceProtocol
    
    init(service: VehicleServiceProtocol) {
        self.service = service
    }
    
    enum SortOrder: String, CaseIterable {
        case vin = "VIN"
        case carType = "Car Type"
    }
    
    func fetchVehicles() async {
        guard inputIsValid, let count = Int(vehicleCount) else {
            alertItem = AlertItem(title: "Invalid Input", message: "Please enter a number between 1 and 100.")
            return
        }
        isLoading = true
        do {
            let fetchedVehicles = try await service.getVehiclesList(count: count)
            vehicles = fetchedVehicles
            sortVehicles()
            isLoading = false
        } catch {
            handleError(error)
            isLoading = false
        }
    }
    
    func sortVehicles() {
        vehicles.sort { lhs, rhs in
            switch sortOrder {
            case .vin:
                return lhs.vin < rhs.vin
            case .carType:
                return lhs.carType < rhs.carType
            }
        }
    }
    
    private func handleError(_ error: Error) {
        if let apiError = error as? RidesAPIError {
            alertItem = AlertItem(title: "API Error", message: apiError.customDescription)
        } else {
            alertItem = AlertItem(title: "Error", message: error.localizedDescription)
        }
    }
}

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
}
