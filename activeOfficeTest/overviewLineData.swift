//
//  overviewLineData.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 08/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import Foundation
import Charts
import UIKit

// Class to generate line data objects
class overviewLineData {
    
    // Define properties of the class
    var input1: ChartDataEntry
    var input2: ChartDataEntry
    var input3: ChartDataEntry
    var input4: ChartDataEntry
    var input5: ChartDataEntry
    var input6: ChartDataEntry
    var input7: ChartDataEntry
    var input8: ChartDataEntry
    var input9: ChartDataEntry
    var input10: ChartDataEntry
    
    // Initialise properties
    init(_ input1: ChartDataEntry,_ input2: ChartDataEntry,_ input3: ChartDataEntry,_ input4: ChartDataEntry,_ input5: ChartDataEntry,_ input6: ChartDataEntry,_ input7: ChartDataEntry,_ input8: ChartDataEntry,_ input9: ChartDataEntry,_ input10: ChartDataEntry) {
        
        self.input1 = input1
        self.input2 = input2
        self.input3 = input3
        self.input4 = input4
        self.input5 = input5
        self.input6 = input6
        self.input7 = input7
        self.input8 = input8
        self.input9 = input9
        self.input10 = input10
        
    }
    // Function to return line chart data
    func setupLineGraph() -> ChartData {
        
        // Define array to hold ChartDataEntry type
        var lineDataEntry: [ChartDataEntry] = Array()
        
        // Append input data to ChartDataEntry type array
        lineDataEntry.append(self.input1)
        lineDataEntry.append(self.input2)
        lineDataEntry.append(self.input3)
        lineDataEntry.append(self.input4)
        lineDataEntry.append(self.input5)
        lineDataEntry.append(self.input6)
        lineDataEntry.append(self.input7)
        lineDataEntry.append(self.input8)
        lineDataEntry.append(self.input9)
        lineDataEntry.append(self.input10)
        
        // Convert to ChartDataSet type
        let lineDataSet = LineChartDataSet(entries: lineDataEntry, label: "")
        
        // Set colours
        let c1 = NSUIColor(displayP3Red: 0.6, green: 0.2, blue: 0.1, alpha: 1.0)
        let c2 = NSUIColor(displayP3Red: 0.2, green: 0.62, blue: 0.6, alpha: 1.0)
        let c3 = NSUIColor(displayP3Red: 0.8, green: 0.38, blue: 0.3, alpha: 1.0)
        let c4 = NSUIColor(displayP3Red: 0.15, green: 0.15, blue: 0.32, alpha: 1.0)
        let c5 = NSUIColor(displayP3Red: 0.2, green: 0.35, blue: 0.6, alpha: 1.0)
        
        lineDataSet.colors = [c1, c2, c3, c4, c5]
        
        // Enable draw values
        lineDataSet.drawValuesEnabled = true
        
        // Create value formatter
        let formatter = NumberFormatter()
        formatter.zeroSymbol = ""
        
        // Convert to ChartData type
        let lineData = LineChartData(dataSet: lineDataSet)
        
        // Return data
        return lineData
        
    }
    
}
