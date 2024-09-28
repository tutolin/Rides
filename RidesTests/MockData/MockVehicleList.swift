//
//  MockVehicleList.swift
//  RidesTests
//
//  Created by Tolulope Aboyeji on 28/09/2024.
//

import Foundation

let mockVehicleList: Data = """
[
   {
      "id":3859,
      "uid":"7b031154-1dc5-41fc-bec2-76bb0b9724f9",
      "vin":"469HFBL03H7213814",
      "make_and_model":"Chevy Silverado",
      "color":"Beige",
      "transmission":"CVT",
      "drive_type":"4x2/2-wheel drive",
      "fuel_type":"Electric",
      "car_type":"Crew Cab Pickup",
      "car_options":[
         "Rear Window Defroster",
         "MP3 (Single Disc)",
         "Leather Interior",
         "Third Row Seats",
         "AM/FM Stereo",
         "Cassette Player",
         "Power Seats",
         "Premium Sound",
         "Navigation"
      ],
      "specs":[
         "Collapsible steering column",
         "Laminated side window glass",
         "Floor carpeting",
         "60/40 folding rear seat",
         "Back-up camera",
         "3-point ELR/ALR rear seat belts at all positions",
         "Pwr windows -inc: 1-touch open/close",
         "Vehicle dynamics integrated management (VDIM) system -inc: vehicle stability control (VSC), traction control (TRAC)"
      ],
      "doors":1,
      "mileage":49709,
      "kilometrage":53360,
      "license_plate":"XDW-2512"
   },
   {
      "id":3833,
      "uid":"3ee5aa05-6745-4487-a2e0-4ea137be7b70",
      "vin":"7F4WP5K3X1V213784",
      "make_and_model":"Dodge Durango",
      "color":"Yellow",
      "transmission":"CVT",
      "drive_type":"4x2/2-wheel drive",
      "fuel_type":"E-85/Gasoline",
      "car_type":"Regular Cab Pickup",
      "car_options":[
         "Third Row Seats",
         "Rear Window Defroster",
         "Integrated Phone",
         "Leather Interior",
         "Power Locks",
         "Alloy Wheels",
         "CD (Multi Disc)",
         "Alarm"
      ],
      "specs":[
         "Reclining front bucket seats -inc: active head restraints, double-thickness foam in front seats",
         "Front/rear crumple zones",
         "Front/rear stabilizer bars",
         "Pwr windows",
         "Grain-matched wood trim -inc: center console, dash, door panels"
      ],
      "doors":3,
      "mileage":19745,
      "kilometrage":50403,
      "license_plate":"OXM-7742"
   },
   {
      "id":3620,
      "uid":"6551ff87-f66b-47f8-bebb-f2105330b781",
      "vin":"49073KCW6N9955360",
      "make_and_model":"Honda Accord",
      "color":"Black",
      "transmission":"Manual",
      "drive_type":"4x2/2-wheel drive",
      "fuel_type":"Electric",
      "car_type":"Convertible",
      "car_options":[
         "Airbag: Passenger",
         "Cruise Control",
         "Fog Lights",
         "Cassette Player",
         "Alarm",
         "Bucket Seats",
         "Power Windows"
      ],
      "specs":[
         "Instrument cluster w/tachometer",
         "Child seat upper tether anchorages",
         "Multi-info display -inc: driving range, average MPG, current MPG, average speed, outside temp, elapsed time, maintenance diagnostic messages",
         "Tire pressure monitoring display",
         "Sentry Key theft deterrent system",
         "Front/rear aluminum multi-link double joint suspension w/coil springs",
         "Rear reading courtesy lamps"
      ],
      "doors":3,
      "mileage":20355,
      "kilometrage":50790,
      "license_plate":"DHY-6559"
   },
   {
      "id":3807,
      "uid":"d8c45038-34de-4d78-b2b0-35919e4e973a",
      "vin":"14967TT0X4K327449",
      "make_and_model":"Chevy Malibu",
      "color":"Yellow",
      "transmission":"Manual",
      "drive_type":"4x4/4-wheel drive",
      "fuel_type":"Electric",
      "car_type":"Regular Cab Pickup",
      "car_options":[
         "Power Locks",
         "Integrated Phone",
         "Airbag: Passenger",
         "Rear Window Wiper",
         "Third Row Seats",
         "Airbag: Driver"
      ],
      "specs":[
         "rear aluminum wheels",
         "Leather-wrapped parking brake handle",
         "Front wheel drive",
         "Immobilizer system",
         "Dual front 2-stage airbags -inc: passenger occupant classification system w/twin-chamber airbag",
         "Integrated fog lamps",
         "Electrochromic pwr folding heated mirrors w/memory -inc: puddle lamps, integrated turn signals, auto reverse tilt-down",
         "60/40 folding rear seat",
         "Full-size spare tire w/aluminum alloy wheel"
      ],
      "doors":1,
      "mileage":65603,
      "kilometrage":55239,
      "license_plate":"HOD-5066"
   },
   {
      "id":1167,
      "uid":"d817647d-243d-4131-a56c-d9e7773cf026",
      "vin":"700ELKLF542566454",
      "make_and_model":"Nissan Rogue",
      "color":"Orange",
      "transmission":"Automanual",
      "drive_type":"RWD",
      "fuel_type":"Gasoline",
      "car_type":"Cargo Van",
      "car_options":[
         "Power Locks",
         "Moonroof/Sunroof",
         "A/C: Front",
         "Cruise Control",
         "MP3 (Multi Disc)"
      ],
      "specs":[
         "Child safety rear door locks",
         "Body color door handles",
         "Energy absorbing steering column",
         "Silver accent IP trim finisher -inc: silver shifter finisher",
         "Rain-sensing wipers",
         "Child safety rear door locks"
      ],
      "doors":4,
      "mileage":66267,
      "kilometrage":70923,
      "license_plate":"BMW-5418"
   },
   {
      "id":8489,
      "uid":"bd9900bd-b83e-48c6-8c70-22e39403446c",
      "vin":"570AHP37148723559",
      "make_and_model":"Buick Riveria",
      "color":"White",
      "transmission":"Manual",
      "drive_type":"FWD",
      "fuel_type":"Ethanol",
      "car_type":"Wagon",
      "car_options":[
         "Rear Window Wiper",
         "Airbag: Side",
         "Alloy Wheels",
         "CD (Single Disc)",
         "DVD System",
         "Moonroof/Sunroof"
      ],
      "specs":[
         "Fog lamps",
         "Body color front/rear bumpers",
         "8-speed automatic transmission -inc: intelligence (ECT-i), gated shifter, sequential sport-shift mode",
         "Supplemental side curtain air bags",
         "Carpeted floor cargo area",
         "3.73 axle ratio",
         "Front door tinted glass",
         "Front/rear spot-lamp illumination"
      ],
      "doors":4,
      "mileage":49481,
      "kilometrage":43250,
      "license_plate":"AGV-6098"
   },
   {
      "id":1952,
      "uid":"3d371673-c939-4904-8204-165918c6c424",
      "vin":"448317TF35V868930",
      "make_and_model":"Nissan Rogue",
      "color":"Violet",
      "transmission":"CVT",
      "drive_type":"4x2/2-wheel drive",
      "fuel_type":"Ethanol",
      "car_type":"Convertible",
      "car_options":[
         "Third Row Seats",
         "Fog Lights",
         "AM/FM Stereo",
         "Airbag: Side",
         "Airbag: Driver"
      ],
      "specs":[
         "Tilt/telescoping steering column",
         "Leather-wrapped steering wheel w/audio controls",
         "Cargo compartment lamp",
         "Acoustic control induction system (ACIS)",
         "Electric speed-sensitive variable-assist pwr steering",
         "Roof mounted antenna",
         "Variable intermittent windshield wipers w/mist function",
         "1.8L DOHC 16-valve I4 engine -inc: engine cover"
      ],
      "doors":1,
      "mileage":50043,
      "kilometrage":54755,
      "license_plate":"SBX-4793"
   },
   {
      "id":8716,
      "uid":"67077749-f30c-4867-b442-1887a7359ef7",
      "vin":"7A7AA8B038J850105",
      "make_and_model":"Lincoln MKS",
      "color":"Blue",
      "transmission":"Automatic",
      "drive_type":"AWD",
      "fuel_type":"Gasoline",
      "car_type":"Cargo Van",
      "car_options":[
         "Premium Sound",
         "DVD System",
         "CD (Single Disc)",
         "Alloy Wheels",
         "Power Locks",
         "Cassette Player"
      ],
      "specs":[
         "Water-repellent windshield front door glass",
         "Luxury front rear floor mats w/logo",
         "Locking glove box",
         "Driver front passenger map pockets",
         "1.8L DOHC 16-valve I4 engine -inc: engine cover",
         "Silver accent IP trim finisher -inc: silver shifter finisher",
         "Dual note horn",
         "Remote fuel lid release"
      ],
      "doors":1,
      "mileage":30555,
      "kilometrage":45267,
      "license_plate":"CAI-7406"
   },
   {
      "id":1604,
      "uid":"b096553f-9b23-4aea-a221-97a6a67a321f",
      "vin":"738KCFBM087775691",
      "make_and_model":"Ford Fiesta",
      "color":"Yellow",
      "transmission":"Manual",
      "drive_type":"4x2/2-wheel drive",
      "fuel_type":"Electric",
      "car_type":"Passenger Van",
      "car_options":[
         "Navigation",
         "A/C: Front",
         "Third Row Seats",
         "Integrated Phone",
         "Antilock Brakes",
         "Moonroof/Sunroof",
         "Cruise Control"
      ],
      "specs":[
         "Fasten seat belt warning light/chime",
         "Carpeted floor cargo area",
         "Anti-lock 4-wheel performance disc brakes",
         "Floor carpeting",
         "Overhead console",
         "(2) aux 12V pwr outlets -inc: (1) in center console, (1) w/cigarette lighter",
         "1-piece chrome window surround",
         "Engine mounts -inc: (2) solid, (1) liquid-filled",
         "12V pwr outlet"
      ],
      "doors":1,
      "mileage":38202,
      "kilometrage":53017,
      "license_plate":"JNL-9540"
   },
   {
      "id":5191,
      "uid":"4d3e6ca5-865a-4284-81ad-2a34311b472e",
      "vin":"7E0YTYDRXLG277174",
      "make_and_model":"Buick Enclave",
      "color":"Red",
      "transmission":"CVT",
      "drive_type":"AWD",
      "fuel_type":"Gasoline Hybrid",
      "car_type":"Crew Cab Pickup",
      "car_options":[
         "Power Locks",
         "Airbag: Side",
         "Fog Lights",
         "A/C: Rear",
         "Navigation",
         "Airbag: Side",
         "Keyless Entry",
         "CD (Single Disc)"
      ],
      "specs":[
         "Dual front 2-stage airbags -inc: passenger occupant classification system w/twin-chamber airbag",
         "Dual-zone automatic climate control system -inc: smog sensor, auto recirculation, clear air filter, pollen filter",
         "160-amp alternator",
         "Enhanced accident response system unlocks the doors, shuts off the fuel pump and turns on interior lights after airbag deploys",
         "1.8L DOHC 16-valve I4 engine -inc: engine cover",
         "Battery saver",
         "Child safety rear door locks"
      ],
      "doors":3,
      "mileage":60612,
      "kilometrage":19535,
      "license_plate":"WEV-4081"
   }
]
""".data(using: .utf8)!
let mockVehicles_invalidJSON: Data = """
[
   {
      "id1":5191,
      "uid":"4d3e6ca5-865a-4284-81ad-2a34311b472e",
      "vin":"7E0YTYDRXLG277174",
      "make_and_model":"Buick Enclave",
      "color":"Red",
      "transmission":"CVT",
      "drive_type":"AWD",
      "fuel_type":"Gasoline Hybrid",
      "car_type":"Crew Cab Pickup",
      "car_options":[
         "Power Locks",
         "Airbag: Side",
         "Fog Lights",
         "A/C: Rear",
         "Navigation",
         "Airbag: Side",
         "Keyless Entry",
         "CD (Single Disc)"
      ],
      "specs":[
         "Dual front 2-stage airbags -inc: passenger occupant classification system w/twin-chamber airbag",
         "Dual-zone automatic climate control system -inc: smog sensor, auto recirculation, clear air filter, pollen filter",
         "160-amp alternator",
         "Enhanced accident response system unlocks the doors, shuts off the fuel pump and turns on interior lights after airbag deploys",
         "1.8L DOHC 16-valve I4 engine -inc: engine cover",
         "Battery saver",
         "Child safety rear door locks"
      ],
      "doors":3,
      "mileage":60612,
      "kilometrage":19535,
      "license_plate":"WEV-4081"
   }
]
""".data(using: .utf8)!
