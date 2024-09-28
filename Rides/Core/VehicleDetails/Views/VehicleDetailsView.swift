//
//  VehicleDetailsView.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import SwiftUI

struct VehicleDetailView: View {
@StateObject private var viewModel: VehicleDetailViewModel
@State private var currentPage = 0

init(vehicle: Vehicle) {
       _viewModel = StateObject(wrappedValue: VehicleDetailViewModel(vehicle: vehicle))
   }
   
var body: some View {
       TabView(selection: $currentPage) {
           VehicleInfoPage(vehicle: viewModel.vehicle)
               .tag(0)
           
           CarbonEmissionsPage(viewModel: viewModel)
               .tag(1)
       }
       .tabViewStyle(.page)
       .indexViewStyle(.page(backgroundDisplayMode: .always))
       .navigationBarTitleDisplayMode(.inline)
   }
}
#Preview {
    VehicleDetailView(vehicle: Vehicle.mockVehicle)
}
