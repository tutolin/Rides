//
//  VehicleDetailsViewModelTests.swift
//  RidesTests
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import XCTest
@testable import Rides

class VehicleDetailsViewModelTests: XCTestCase {
    
    var viewModel: VehicleDetailViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = VehicleDetailViewModel(vehicle: Vehicle.mockVehicle)
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testEmissionsUnder5000Km() {
        let kilometrage = 4000
        let emissions = viewModel.calculateEmissions(forKilometrage: kilometrage)
        XCTAssertEqual(emissions, 4000, "Emissions for 3000km should be 4000 units")
    }
    
    func testEmissionsExactly5000Km() {
        let kilometrage = 5000
        let emissions = viewModel.calculateEmissions(forKilometrage: kilometrage)
        XCTAssertEqual(emissions, 5000, "Emissions for 5000km should be 5000 units")
    }
    
    func testEmissionsOver5000Km() {
        let kilometrage = 7000
        let emissions = viewModel.calculateEmissions(forKilometrage: kilometrage)
        XCTAssertEqual(emissions, 8000, "Emissions for 7000km should be 8000 units")
    }
    
    func testEmissionsForZeroKm() {
        let kilometrage = 0
        let emissions = viewModel.calculateEmissions(forKilometrage: kilometrage)
        XCTAssertEqual(emissions, 0, "Emissions for 0km should be 0 units")
    }
    
    func testEmissionsForLargeKilometrage() {
        let kilometrage = 100000
        let emissions = viewModel.calculateEmissions(forKilometrage: kilometrage)
        XCTAssertEqual(emissions, 147500, "Emissions for 100000km should be 147500 units")
    }
    
    func testEmissionsForNegativeKilometrage() {
        let kilometrage = -1000
        let emissions = viewModel.calculateEmissions(forKilometrage: kilometrage)
        XCTAssertEqual(emissions, 0, "Emissions for negative kilometrage should be 0 units")
    }
}
