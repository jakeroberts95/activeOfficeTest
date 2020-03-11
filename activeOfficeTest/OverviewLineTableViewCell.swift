//
//  OverviewLineTableViewCell.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 08/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import UIKit
import Charts

class OverviewLineTableViewCell: UITableViewCell {

    @IBOutlet weak var lineView: LineChartView!
    @IBOutlet weak var lineLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupLineCell(lineCell: lineCellData) {
        lineView.legend.enabled = false
        
        lineView.leftAxis.labelTextColor = UIColor.white
        lineView.xAxis.labelTextColor = UIColor.white
        lineView.rightAxis.enabled = false
        lineView.xAxis.labelPosition = .bottom
        lineView.leftAxis.drawBottomYLabelEntryEnabled = true
        lineView.leftAxis.drawTopYLabelEntryEnabled = true
        lineView.doubleTapToZoomEnabled = false
        lineView.animate(xAxisDuration: 1, yAxisDuration: 1)
        lineView.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
        lineView.drawGridBackgroundEnabled = true
        lineView.gridBackgroundColor = NSUIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 0.5)
        
        lineView.data = lineCell.lineChartData
        lineLabel.text = lineCell.lineChartLabel
        
    }
    
}


