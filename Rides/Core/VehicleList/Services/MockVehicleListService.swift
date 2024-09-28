//
//  MockVehicleListService.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

class MockVehicleListService: NetworkManager, VehicleServiceProtocol {
    
    var mockData: Data?
    var mockError: RidesAPIError?
    
    func getVehiclesList(count: Int) async throws -> [Vehicle] {
        
        if let mockError {throw mockError}
        
        do {
            let list = try JSONDecoder().decode([Vehicle].self, from: mockData ?? mockVehicleList)
            return list
        } catch {
            throw error as? RidesAPIError ?? .unKnownError(error: error)
        }
    }
  
    
}
