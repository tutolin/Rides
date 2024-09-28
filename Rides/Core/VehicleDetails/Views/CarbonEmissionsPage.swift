//
//  CarbonEmissionsPage.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import SwiftUI

struct CarbonEmissionsPage: View {
    @ObservedObject var viewModel: VehicleDetailViewModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Estimated Carbon Emissions")
                    .font(.title2)
                    .fontWeight(.bold)
                
                VStack(alignment: .leading, spacing: 15) {
                    emissionRow(title: "Total Emissions", value: "\(viewModel.totalEmissions) units")
                    emissionRow(title: "Emissions per km", value: String(format: "%.2f units", viewModel.emissionsPerKm))
                    emissionRow(title: "Total Distance", value: "\(viewModel.vehicle.kilometrage) km")
                }
                
                Text("Note: These calculations are based on the vehicle's kilometrage.")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.top)
            }
            .padding()
        }
    }
    
    private func emissionRow(title: String, value: String) -> some View {
        HStack {
            Text(title)
                .fontWeight(.semibold)
                .frame(width: 150, alignment: .leading)
            Text(value)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
