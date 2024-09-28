//
//  VehicleInfoPage.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import SwiftUI

struct VehicleInfoPage: View {
    let vehicle: Vehicle
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                headerSection
                detailsSection
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var headerSection: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(systemName: "car.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
                .foregroundColor(.blue)
            
            Text(vehicle.makeAndModel)
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity)
    }
    
    private var detailsSection: some View {
        VStack(alignment: .leading, spacing: 15) {
            detailRow(title: "VIN", value: vehicle.vin)
            detailRow(title: "Color", value: vehicle.color)
            detailRow(title: "Type", value: vehicle.carType)
        }
    }
    
    private func detailRow(title: String, value: String) -> some View {
        HStack {
            Text(title)
                .fontWeight(.semibold)
                .frame(width: 100, alignment: .leading)
            Text(value)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
}
