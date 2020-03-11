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
    
    // Initialise properties
    init(chartName: String, chartDetail: PieChartData) {
        self.chartName = chartName
        self.chartDetail = chartDetail
    }
    
    // Method to generate array of cell data objects
    class func setupCellDataArray() -> [pieCellData] {
        
        // Define array variable
        var pieCellDatum: [pieCellData] = []
        
        // Define input chart data entry
        let overviewChart1 = overviewPieData(PieChartDataEntry(value: 40, label: "Lighting"), PieChartDataEntry(value: 50, label: "Battery Storage"), PieChartDataEntry(value: 150, label: "Appliances"), PieChartDataEntry(value: 200, label: "Electric Vehicles"), PieChartDataEntry(value: 100, label: "Heating"))
        
        let overviewChart2 = overviewPieData(PieChartDataEntry(value: 200, label: "PV Tubes"), PieChartDataEntry(value: 340, label: "PV Panels"), PieChartDataEntry(value: 0, label: "National Grid"), PieChartDataEntry(value: 0, label: "Battery Storage"), PieChartDataEntry(value: 0, label: ""))
        
        // Call method to convert data entry type to usable data type
        let detail1 = overviewChart1.setupPieChart()
        let detail2 = overviewChart2.setupPieChart()
        
        // Create pieCell objects with chart label and data as inputs
        let pieCell1 = pieCellData(chartName: "Energy Usage Data", chartDetail: detail1)
        let pieCell2 = pieCellData(chartName: "Energy Source Data", chartDetail: detail2)
        
        // Append cell objects to array
        pieCellDatum.append(pieCell1)
        pieCellDatum.append(pieCell2)
        
        // Return array of cell objects
        return pieCellDatum
        
    }
    
    
    
    
}
