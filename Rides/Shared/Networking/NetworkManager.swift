//
//  NetworkManager.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

protocol NetworkManager {
    func fetchData<T: Decodable>(as type: T.Type, endpoint: String) async throws -> T
}

extension NetworkManager {
    func fetchData<T: Decodable>(as type: T.Type, endpoint: String) async throws -> T {
        guard let url = URL(string: endpoint) else {
            throw RidesAPIError.requestFailed(description: "Invalid Url")
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw RidesAPIError.requestFailed(description: "Request Failed")
        }
        
        guard (200...299).contains(httpResponse.statusCode) else {
            throw RidesAPIError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(type, from: data)
        } catch {
            print("DEBUG: Error \((error))")
            throw error as? RidesAPIError ?? .unKnownError(error: error)
        }
    }
}
