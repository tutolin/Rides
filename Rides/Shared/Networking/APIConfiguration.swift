//
//  APIConfiguration.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

struct APIConfiguration {
    static var baseUrlComponents: URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "random-data-api.com"
        return components
    }
}
