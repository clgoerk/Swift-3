import UIKit

// Assignment 3 (Inheritance and Method Overriding)

//=== Computer Class ===>>
class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    // Getters
    func getBrand() -> String {
        return self.brand
    }
    func getProcessor() -> String {
        return self.processor
    }
    func getRam() -> Int {
        return self.ram
    }
    
    // Setters
    func setBrand(brand: String) {
        self.brand = brand
    }
    func setProcessor(processor: String) {
        self.processor = processor
    }
    func setRam(ram: Int) {
        self.ram = ram
    }
    
    // Methods
    func displaySpecs() {
        print("Brand: \(self.brand), Processor: \(self.processor), Ram: \(self.ram)")
    }
} // Computer

//=== Laptop Class ===>>
class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // Methods
    func touchscreen() -> String {
        if self.isTouchscreen {
            return "Yes"
        } else {
            return "No"
        }
    }
    override func displaySpecs() {
        print("Laptop Specs:\nBrand: \(super.getBrand()), Processor: \(super.getProcessor()), Ram: \(super.getRam()), GB\nTouchscreen: \(self.touchscreen())\n")
    }
} // Laptop

//=== Desktop Class ===>>
class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // Methods
    func dedicatedGPU() -> String {
        if self.hasDedicatedGPU {
            return "Yes"
        } else {
            return "No"
        }
    }
    override func displaySpecs() {
        print("Desktop Specs:\nBrand: \(super.getBrand()), Processor: \(super.getProcessor()), Ram: \(super.getRam()), GB\nDedicatedGPU: \(self.dedicatedGPU())\n")
    }
} // Desktop

//=== Server Class ===>>
class Server: Computer {
    private var rackUnits: Int
    
    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }
            
    // Methods
    override func displaySpecs() {
        print("Server Specs:\nBrand: \(super.getBrand()), Processor: \(super.getProcessor()), Ram: \(super.getRam()), GB\nRack Units: \(self.rackUnits)U\n")
    }
} // Server


// Testing Instances
var laptop1 = Laptop(brand: "MacBook Pro 14-inch (2023)", processor: "Apple M2 Pro Chip (10-core CPU, 16-core GPU)", ram: 16, isTouchscreen: false)
var laptop2 = Laptop(brand: "HP Pavilion x360 14", processor: "Intel Core i5-1135G7 (11th Gen, 4 Cores, up to 4.2 GHz)", ram: 32, isTouchscreen: true)
laptop1.displaySpecs()
laptop2.displaySpecs()

var desktop1 = Desktop(brand: "Lenovo ThinkPad X1 Carbon Gen 11", processor: "Intel Core i7-1355U (13th Gen, 10 Cores, up to 5.0 GHz)", ram: 16, hasDedicatedGPU: true)
var desktop2 = Desktop(brand: "Acer Aspire 5 A515-58", processor: "Intel Core i5-1235U (12th Gen, 10 Cores, up to 4.4 GHz)", ram: 32, hasDedicatedGPU: false)
desktop1.displaySpecs()
desktop2.displaySpecs()

var server1 = Server(brand: "Dell", processor: "PowerEdge R740", ram: 128, rackUnits: 2)
var server2 = Server(brand: "HPE", processor: "HPE ProLiant DL380 Gen10", ram: 512, rackUnits: 4)
server1.displaySpecs()
server2.displaySpecs()
