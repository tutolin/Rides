//
//  Vehicle.swift
//  Rides
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

struct Vehicle: Codable, Identifiable {
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
