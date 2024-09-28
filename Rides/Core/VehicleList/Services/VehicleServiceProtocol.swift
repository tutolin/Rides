//
//  VehicleServiceProtocol.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

protocol VehicleServiceProtocol {
    func getVehiclesList(count: Int) async throws -> [Vehicle]
}
