//
//  RidesTests.swift
//  RidesTests
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import XCTest
@testable import Rides

class VehicleListViewModelTests: XCTestCase {
    
    var viewModel: VehicleListViewModel!
    var mockService: MockVehicleListService!
    
    @MainActor override func setUp() {
        super.setUp()
        mockService = MockVehicleListService()
        viewModel = VehicleListViewModel(service: mockService)
    }
    
    override func tearDown() {
        viewModel = nil
        mockService = nil
        super.tearDown()
    }
    
    @MainActor func testInit() {
        XCTAssertNotNil(viewModel, "The view model should not be nil")
    }
    
    @MainActor func testSuccessfulVehiclesFetch() async {
        viewModel.vehicleCount = "10"
        await viewModel.fetchVehicles()
        
        XCTAssert(viewModel.vehicles.count > 0)
        XCTAssertEqual(viewModel.vehicles.count, 10)
        XCTAssertEqual(viewModel.vehicles, viewModel.vehicles.sorted(by: {$0.vin < $1.vin}))
    }
    
    @MainActor func testVehicleFetchWithInvalidJSON() async {
        mockService.mockData = mockVehicles_invalidJSON
        viewModel.vehicleCount = "10"
        
        await viewModel.fetchVehicles()
        XCTAssertTrue(viewModel.vehicles.isEmpty)
        XCTAssertNotNil(viewModel.alertItem)
    }
    
    @MainActor func testThrowsInvalidDataError() async {
        mockService.mockError = RidesAPIError.invalidData
        viewModel.vehicleCount = "10"
        
        await viewModel.fetchVehicles()
        XCTAssertNotNil(viewModel.alertItem)
        XCTAssertEqual(viewModel.alertItem?.message, RidesAPIError.invalidData.customDescription)
    }
    
    @MainActor func testThrowsInvalidStatusCode() async {
        mockService.mockError = RidesAPIError.invalidStatusCode(statusCode: 404)
        viewModel.vehicleCount = "10"
        
        await viewModel.fetchVehicles()
        XCTAssertNotNil(viewModel.alertItem)
        XCTAssertEqual(viewModel.alertItem?.message, RidesAPIError.invalidStatusCode(statusCode: 404).customDescription)
    }
    
    @MainActor func testInputValidation() {
        viewModel.vehicleCount = ""
        XCTAssertFalse(viewModel.inputIsValid)
        
        viewModel.vehicleCount = "0"
        XCTAssertFalse(viewModel.inputIsValid)
        
        viewModel.vehicleCount = "101"
        XCTAssertFalse(viewModel.inputIsValid)
        
        viewModel.vehicleCount = "50"
        XCTAssertTrue(viewModel.inputIsValid)
        
        viewModel.vehicleCount = "abc"
        XCTAssertFalse(viewModel.inputIsValid)
    }
    
    @MainActor func testSortingVehicles() async {
        viewModel.vehicleCount = "50"
        await viewModel.fetchVehicles()
        
        viewModel.sortOrder = .vin
        viewModel.sortVehicles()
        XCTAssertEqual(viewModel.vehicles.first?.vin, "14967TT0X4K327449")
        
        viewModel.sortOrder = .carType
        viewModel.sortVehicles()
        XCTAssertEqual(viewModel.vehicles.first?.carType, "Cargo Van")
    }
}
