//
//  overviewPieCellData.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 08/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import Foundation
import Charts

// Class for cell data objects
class pieCellData {
    
    // Define cell properties
    var chartName: String?
    var chartDetail: PieChartData?
    var parameterLabel1: String?
    var parameterLabel2: String?
    var parameterLabel3: String?
    var parameterLabel4: String?
    var parameterLabel5: String?
    var parameterLabel6: String?
    var parameterValue1: Int
    var parameterValue2: Int
    var parameterValue3: Int
    var parameterValue4: Bool?
    var parameterValue5: String?
    var parameterValue6: String?
    
    
    // Initialise properties
    init(chartName: String, chartDetail: PieChartData, parameterLabel1: String, parameterLabel2: String, parameterLabel3: String, parameterLabel4: String, parameterLabel5: String, parameterLabel6: String, parameterValue1: Int, parameterValue2: Int, parameterValue3: Int, parameterValue4: Bool, parameterValue5: String, parameterValue6: String) {
        self.chartName = chartName
        self.chartDetail = chartDetail
        self.parameterLabel1 = parameterLabel1
        self.parameterLabel2 = parameterLabel2
        self.parameterLabel3 = parameterLabel3
        self.parameterLabel4 = parameterLabel4
        self.parameterLabel5 = parameterLabel5
        self.parameterLabel6 = parameterLabel6
        self.parameterValue1 = parameterValue1
        self.parameterValue2 = parameterValue2
        self.parameterValue3 = parameterValue3
        self.parameterValue4 = parameterValue4
        self.parameterValue5 = parameterValue5
        self.parameterValue6 = parameterValue6
    }
    
    // Method to generate array of cell data objects
    class func setupCellDataArray() -> [pieCellData] {
        
        // Define array variable
        var pieCellDatum: [pieCellData] = []
        
        // Define input chart data entry
        let chart1 = overviewPieData(PieChartDataEntry(value: 40, label: "Lighting"), PieChartDataEntry(value: 50, label: "Battery Storage"), PieChartDataEntry(value: 150, label: "Appliances"), PieChartDataEntry(value: 200, label: "Electric Vehicles"), PieChartDataEntry(value: 100, label: "Heating"))
        
        let chart2 = overviewPieData(PieChartDataEntry(value: 200, label: "PV Tubes"), PieChartDataEntry(value: 340, label: "PV Panels"), PieChartDataEntry(value: 0, label: "National Grid"), PieChartDataEntry(value: 0, label: "Battery Storage"), PieChartDataEntry(value: 0, label: ""))
        
        // Call method to convert data entry type to usable data type
        let detail1 = chart1.setupPieChart()
        let detail2 = chart2.setupPieChart()
        
        // Create pieCell objects with chart label and data as inputs
        let pieCell1 = pieCellData(chartName: "Energy Usage Data (W)", chartDetail: detail1, parameterLabel1: "EV Energy Usage:", parameterLabel2: "Building Energy Usage:", parameterLabel3: "Carbon Cost:", parameterLabel4: "Potential System Failure:", parameterLabel5: "", parameterLabel6: "", parameterValue1: 200, parameterValue2: 340, parameterValue3: 0, parameterValue4: false, parameterValue5: "", parameterValue6: "")
        let pieCell2 = pieCellData(chartName: "Energy Source Data (W)", chartDetail: detail2, parameterLabel1: "Total Generation (W):", parameterLabel2: "Total Usage (W):", parameterLabel3: "Surplus/Deficit (W):", parameterLabel4: "Battery Status:", parameterLabel5: "Energy Price (£):", parameterLabel6: "Potential Revenue (£):", parameterValue1: 540, parameterValue2: 540, parameterValue3: 0, parameterValue4: false, parameterValue5: "0.12", parameterValue6: "0")
        
        // Append cell objects to array
        pieCellDatum.append(pieCell1)
        pieCellDatum.append(pieCell2)
        
        // Return array of cell objects
        return pieCellDatum
        
    }
    
    
    
    
}
