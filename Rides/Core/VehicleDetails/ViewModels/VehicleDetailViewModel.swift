//
//  VehicleDetailViewModel.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

class VehicleDetailViewModel: ObservableObject {
    @Published var vehicle: Vehicle
    @Published var totalEmissions: Int = 0
    @Published var emissionsPerKm: Double = 0.0
    
    init(vehicle: Vehicle) {
        self.vehicle = vehicle
        calculateEmissions()
    }
    
    func calculateEmissions() {
        totalEmissions = calculateEmissions(forKilometrage: vehicle.kilometrage)
        emissionsPerKm = vehicle.kilometrage > 0 ? Double(totalEmissions) / Double(vehicle.kilometrage) : 0
    }
    
    func calculateEmissions(forKilometrage kilometrage: Int) -> Int {
        let validKilometrage = max(0, kilometrage) // Ensure non-negative value
        
        if validKilometrage <= 5000 {
            return validKilometrage
        } else {
            let firstPart = 5000
            let secondPart = Int(Double(validKilometrage - 5000) * 1.5)
            return firstPart + secondPart
        }
    }
}
