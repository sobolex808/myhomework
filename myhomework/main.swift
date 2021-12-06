//
//  main.swift
//  myhomework
//
//  Created by Alex Sobolev on 28.11.2021.
//

import Foundation

print("Hello, World!")


enum BrandAuto {
    case Mercedes
    case Renault
    case Ford
    case Scania
}

enum ModelAuto {
    case C180
    case Sandero
    case Focus
    case Interlink
    case Cargo
}

enum DoorState {
    case open
    case close
}

enum WindowState {
    case open
    case close
}

enum EngineState {
    case start
    case stop
}

enum TrunkState {
    case full
    case empty
}

enum Transmission {
    case auto
    case manual
}

struct NewSportCar {
let yearOfManufacture: Int
var brandSportCar: BrandAuto
var modelSportCar: ModelAuto
var distance: Double
var doorState: DoorState
var color: String
mutating func chooseNewColor(color: String) {
    switch color {
    case "white":
        self.color = "white"
    case "black":
        self.color = "black"
    case "green":
        self.color = "green"
    default:
        print("Another color")
    }
}

var trunkState: TrunkState {
    willSet {
        if newValue == .full {
        print("on this car trunk is full")
  } else {
        print("on this car trunk is empty") }
  }
}

var windowState: WindowState {
    willSet {
        if newValue == .open {
        print("on this car windows are open")
  } else { print("on this car windows are close") }
  }
}
        
mutating func closeDoor() {
    self.doorState = .close
}

mutating func openDoor() {
    self.doorState = .open
}

var engineState : EngineState {
    willSet {
        if newValue == .start {
           print ("on this car engine is on")
  } else { print("on this car engine is off")}
  }
}

func printDistance() {
print("this car passed \(distance) kilometers")
}
}

struct NewTruck {
let yearOfManufacture: Int
var brandTruck: BrandAuto
var modelTruck: ModelAuto
var distance: Double
var doorState: DoorState
var color: String
mutating func chooseNewColor(color: String) {
    switch color {
    case "white":
        self.color = "white"
    case "black":
        self.color = "black"
    case "red":
        self.color = "red"
    default:
        print("Another color")
  }
}

var windowState: WindowState {
    willSet {
        if newValue == .open {
           print("on this car windows are open")
  } else { print("on this car windows are close") }
  }
}

var transmission: Transmission {
    willSet {
        if newValue == .auto {
           print("on this truck transmission is auto")
  } else {
           print("on this truck transmission is manual")}
  }
}

mutating func closeDoor() {
self.doorState = .close
}

mutating func openDoor() {
self.doorState = .open
}

var engineState: EngineState {
    willSet {
        if newValue == .start {
           print ("on this truck engine is on")
  } else { print("on this truck engine is off")}
  }
}

func printDistance() {
print("this truck passed \(distance) kilometers")
  }
}

var newCar = NewSportCar(yearOfManufacture: 2019, brandSportCar: .Mercedes, modelSportCar: .C180, distance: 3000, doorState: .close, color: "black", trunkState: .full, windowState: .close, engineState: .start)
var newTruck = NewTruck(yearOfManufacture: 2018, brandTruck: .Scania, modelTruck: .Interlink, distance: 3999, doorState: .close, color: "red", windowState: .open, transmission: .manual, engineState: .start)

newCar.distance = 2000
newCar.doorState = .open
newCar.trunkState = .empty

newTruck.distance = 43333
newTruck.engineState = .stop
newTruck.transmission = .auto

print("this new car is \(BrandAuto.Mercedes) \(ModelAuto.C180),  engine state is \(EngineState.start)")
