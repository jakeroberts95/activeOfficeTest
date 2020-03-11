//
//  overviewStatusCellData.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 10/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import Foundation

class statusCellData {
    
    // Define status class properties
    var operatingMode: String?
    var numEVCharging: Int
    var powerOutput: Int
    var powerInput: Int
    var carbonCost: Int
    var operatingModeLabel: String?
    var numEVChargingLabel: String?
    var powerOutputLabel: String?
    var powerInputLabel: String?
    var carbonCostLabel: String?
    var cellTitleLabel: String?
    
    // Initialise properties
    init(operatingMode: String, numEVCharging: Int, powerOutput: Int, powerInput: Int, carbonCost: Int, operatingModeLabel: String, numEVChargingLabel: String, powerOutputLabel: String, powerInputLabel: String, carbonCostLabel: String, cellTitleLabel: String) {
        self.operatingMode = operatingMode
        self.numEVCharging = numEVCharging
        self.powerOutput = powerOutput
        self.powerInput = powerInput
        self.carbonCost = carbonCost
        self.operatingModeLabel = operatingModeLabel
        self.numEVChargingLabel = numEVChargingLabel
        self.powerOutputLabel = powerOutputLabel
        self.powerInputLabel = powerInputLabel
        self.carbonCostLabel = carbonCostLabel
        self.cellTitleLabel = cellTitleLabel
    }
    
    // Class method to produce array of data for the cell
    class func setupCellDataArray() -> [statusCellData] {
        
        // Array to hold cell data
        var statusCellDataArray: [statusCellData] = []
        
        // Create data objects
        let status1 = statusCellData(operatingMode: "EV Charging Mode", numEVCharging: 1, powerOutput: 540, powerInput: 540, carbonCost: 0, operatingModeLabel: "Operating Mode:", numEVChargingLabel: "EVs Charging:", powerOutputLabel: "Total Load: ", powerInputLabel: "Total Power Generated", carbonCostLabel: "CO2 Cost", cellTitleLabel: "Building Status")
        
        // Append to array
        statusCellDataArray.append(status1)
        
        return statusCellDataArray
    }
}
