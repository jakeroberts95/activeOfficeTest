//
//  overviewPieData.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 08/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import Foundation
import Charts

class overviewPieData {
    
    //Define input parameters
    var input1: PieChartDataEntry
    var input2: PieChartDataEntry
    var input3: PieChartDataEntry
    var input4: PieChartDataEntry
    var input5: PieChartDataEntry
    
    //Initialise inputs
    init(_ input1: PieChartDataEntry,_ input2: PieChartDataEntry,_ input3: PieChartDataEntry,_ input4: PieChartDataEntry,_ input5: PieChartDataEntry) {
        
        self.input1 = input1
        self.input2 = input2
        self.input3 = input3
        self.input4 = input4
        self.input5 = input5
        
    }
    //Function to convery data into correct PieChartDataSet type
    func setupPieChart() -> PieChartData {
        
        //Define array to hold input data
        var overviewEntries: [PieChartDataEntry] = Array()
        
        //Append input data to array
        overviewEntries.append(self.input1)
        overviewEntries.append(self.input2)
        overviewEntries.append(self.input3)
        overviewEntries.append(self.input4)
        overviewEntries.append(self.input5)
        
        //Convert to PieChartDataSet
        let overviewDataSet = PieChartDataSet(entries: overviewEntries, label: "")
        
        //Define colour variables
        
        let c1 = NSUIColor(displayP3Red: 0.6, green: 0.2, blue: 0.1, alpha: 1.0)
        let c2 = NSUIColor(displayP3Red: 0.2, green: 0.62, blue: 0.6, alpha: 1.0)
        let c3 = NSUIColor(displayP3Red: 0.8, green: 0.38, blue: 0.3, alpha: 1.0)
        let c4 = NSUIColor(displayP3Red: 0.15, green: 0.15, blue: 0.32, alpha: 1.0)
        let c5 = NSUIColor(displayP3Red: 0.2, green: 0.35, blue: 0.6, alpha: 1.0)
        
        //Assign colours to dataset
        overviewDataSet.colors = [c1, c2, c3, c4, c5]
        
        //Enable draw values
        overviewDataSet.drawValuesEnabled = true
        
        //Format data in chart
        let formatter = NumberFormatter()
        formatter.zeroSymbol = ""
        
        //Convert to PieChartData type
        let pieData = PieChartData(dataSet: overviewDataSet)
        pieData.setValueFormatter(DefaultValueFormatter(formatter: formatter))
        
        //Return data object
        return pieData
    }
    
}

