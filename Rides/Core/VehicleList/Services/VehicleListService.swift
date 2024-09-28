//
//  VehicleListService.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

class VehicleListService: NetworkManager, VehicleServiceProtocol {
    
    func getVehiclesList(count: Int) async throws -> [Vehicle] {
        guard let endpoint =  vehiclesURLString(count: count) else {
            throw RidesAPIError.requestFailed(description: "invalid endpoint")
        }
        return try await fetchData(as: [Vehicle].self, endpoint: endpoint)
    }
    
    private func vehiclesURLString(count: Int) ->  String? {
        var components = APIConfiguration.baseUrlComponents
        components.path += "/api/vehicle/random_vehicle"
        
        components.queryItems = [
            .init(name: "size", value: String(count))
        ]
        
        return components.url?.absoluteString
    }
    
}
