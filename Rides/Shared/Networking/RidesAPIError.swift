//
//  APIConfiguration.swift
//  Ride
//
//  Created by Tolulope Aboyeji on 26/09/2024.
//

import Foundation

enum RidesAPIError: Error {
    case invalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unKnownError(error: Error)
    
    var customDescription: String {
        switch self {
        case .invalidData: return "Invalid Data"
        case .jsonParsingFailure: return "Failed to parse JSON"
        case let .requestFailed(description): return "Request Failed: \(description)"
        case let .invalidStatusCode(statusCode): return "Invalid Status Code: \(statusCode)"
        case let .unKnownError(error: error): return "An Unknown Error Occurred \(error.localizedDescription)"
        }
    }
}
