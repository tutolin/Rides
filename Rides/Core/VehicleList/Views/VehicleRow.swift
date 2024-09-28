//
//  VehicleRow.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import SwiftUI

struct VehicleRow: View {
    let vehicle: Vehicle
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(vehicle.makeAndModel)
                .font(.headline)
            Text("VIN: \(vehicle.vin)")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 5)
    }
}
