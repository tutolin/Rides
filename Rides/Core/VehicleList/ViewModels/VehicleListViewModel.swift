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
 
    
    private let service: VehicleServiceProtocol
    
    init(service: VehicleServiceProtocol) {
        self.service = service
    }
    
    enum SortOrder: String, CaseIterable {
        case vin = "VIN"
        case carType = "Car Type"
    }
    
    func fetchVehicles() async {
        isLoading = true
        do {
            let fetchedVehicles = try await service.getVehiclesList(count: Int(vehicleCount) ?? 0)
            vehicles = fetchedVehicles
            sortVehicles()
            isLoading = false
        } catch {
            isLoading = false
            handleError(error)
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
