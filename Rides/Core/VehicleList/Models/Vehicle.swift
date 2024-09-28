//
//  Vehicle.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

struct Vehicle: Codable, Identifiable, Hashable {
    let id: Int
    let uid, vin, makeAndModel, color: String
    let transmission, driveType, fuelType, carType: String
    let carOptions, specs: [String]
    let doors, mileage, kilometrage: Int
    let licensePlate: String

    enum CodingKeys: String, CodingKey {
        case id, uid, vin
        case makeAndModel = "make_and_model"
        case color, transmission
        case driveType = "drive_type"
        case fuelType = "fuel_type"
        case carType = "car_type"
        case carOptions = "car_options"
        case specs, doors, mileage, kilometrage
        case licensePlate = "license_plate"
    }
}

extension Vehicle {
    static let mockVehicle = Vehicle(
        id: 1,
        uid: "6551ff87-f66b-47f8-bebb-f2105330b781",
        vin: "1HGCM82633A123456",
        makeAndModel: "Honda Civic",
        color: "Blue",
        transmission: "Automatic",
        driveType: "FWD",
        fuelType: "Gasoline",
        carType: "Sedan",
        carOptions: ["Air Conditioning", "Power Windows", "Bluetooth"],
        specs: ["Roof mounted antenna", "Rearview Camera"],
        doors: 4,
        mileage: 12000,
        kilometrage: 3000,
        licensePlate: "ABC-1234"
    )
}
