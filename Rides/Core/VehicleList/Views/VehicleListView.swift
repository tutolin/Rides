//
//  ContentView.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import SwiftUI

struct VehicleListView: View {
    @StateObject private var viewModel: VehicleListViewModel
    @FocusState private var isInputFocused: Bool
    @State private var showingSortOptions = false
    
    init(service: VehicleServiceProtocol) {
        _viewModel = StateObject(wrappedValue: VehicleListViewModel(service: service))
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                vehicleInputSection
                sortingSection
                vehicleList
                Spacer()
            }
            .navigationTitle("Ride Explorer")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: .default(Text("OK")))
            }
            .navigationTitle("Ride Explorer")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
    
    private var vehicleInputSection: some View {
        HStack {
            TextField("Vehicles (1-100)", text: $viewModel.vehicleCount)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .focused($isInputFocused)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 2)
                )
            
            Button(action: {
                isInputFocused = false
                Task { await viewModel.fetchVehicles() }
            }) {
                Text("Fetch")
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
}
.padding()
}
    
    private var sortingSection: some View {
        HStack {
            Text("Sort by:")
            Picker("Sort", selection: $viewModel.sortOrder) {
                Text("VIN").tag(VehicleListViewModel.SortOrder.vin)
                Text("Type").tag(VehicleListViewModel.SortOrder.carType)
            }
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: viewModel.sortOrder) { _,_ in
                         viewModel.sortVehicles()
                     }
        }
        .padding(.horizontal)
    }
    
    private var vehicleList: some View {
        Group {
            if viewModel.isLoading {
                ProgressView("Fetching vehicles...")
            } else if viewModel.vehicles.isEmpty {
                Text("No vehicles to display")
                    .foregroundColor(.secondary)
            } else {
                List {
                    ForEach(viewModel.vehicles) { vehicle in
                        NavigationLink(value: vehicle) {
                            VehicleRow(vehicle: vehicle)
                        }
                         
                    }
                }
                .refreshable {
                    await viewModel.fetchVehicles()
                }
            }
        }
        .navigationDestination(for: Vehicle.self) { vehicle in
            VehicleDetailView(vehicle: vehicle)
        }
    }
}



#Preview {
    VehicleListView(service: MockVehicleListService())
}
