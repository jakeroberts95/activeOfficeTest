//
//  overviewLineCellData.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 08/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import Foundation
import Charts
import UIKit

// Class to build all data for the line graph cells
class lineCellData {
    
    // Define cell properties
    var lineChartLabel: String?
    var lineChartData: ChartData?
    
    // Initialise properties
    init(lineChartLabel: String, lineChartData: ChartData) {
        
        self.lineChartLabel = lineChartLabel
        self.lineChartData = lineChartData
        
    }
    
    // Class method to produce array of data for the cell
    class func setupCellDataArray() -> [lineCellData] {
        
        // Array to hold cell data
        var lineCellDataArray: [lineCellData] = []
        
        // Define inputs for array
        let lineChart1 = overviewLineData(ChartDataEntry(x: 9, y: 50000), ChartDataEntry(x: 10, y: 55000), ChartDataEntry(x: 11, y: 56000), ChartDataEntry(x: 12, y: 56000), ChartDataEntry(x: 13, y: 55000), ChartDataEntry(x: 14, y: 53000), ChartDataEntry(x: 15, y: 50000), ChartDataEntry(x: 16, y: 51000), ChartDataEntry(x: 17, y: 49000), ChartDataEntry(x: 18, y: 52000))
        
        let lineChart2 = overviewLineData(ChartDataEntry(x: 9, y: 10), ChartDataEntry(x: 10, y: 15000), ChartDataEntry(x: 11, y: 15000), ChartDataEntry(x: 12, y: 15000), ChartDataEntry(x: 13, y: 15000), ChartDataEntry(x: 14, y: 15000), ChartDataEntry(x: 15, y: 15000), ChartDataEntry(x: 16, y: 15000), ChartDataEntry(x: 17, y: 15000), ChartDataEntry(x: 18, y: 10))
        
        // Convert input objects to ChartData type
        let lineCell1 = lineChart1.setupLineGraph()
        let lineCell2 = lineChart2.setupLineGraph()
        
        lineCell1.setValueTextColor(NSUIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1))
        lineCell2.setValueTextColor(NSUIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1))
        
        // Create cell data objects
        let detail1 = lineCellData(lineChartLabel: "Battery Levels", lineChartData: lineCell1)
        let detail2 = lineCellData(lineChartLabel: "Power Drawn for EVs", lineChartData: lineCell2)
        
        // Append to array of cell data objects
        lineCellDataArray.append(detail1)
        lineCellDataArray.append(detail2)
        
        //Return array of cell data
        return lineCellDataArray
        
    }
    
    
}
