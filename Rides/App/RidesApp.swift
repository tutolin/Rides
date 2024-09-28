//
//  RidesApp.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import SwiftUI

@main
struct RidesApp: App {
    var body: some Scene {
        WindowGroup {
            VehicleListView(service: VehicleListService())
        }
    }
}
