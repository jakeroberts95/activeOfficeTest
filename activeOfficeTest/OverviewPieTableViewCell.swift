//
//  OverviewPieTableViewCell.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 08/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import UIKit
import Charts

class OverviewPieTableViewCell: UITableViewCell {
 
    @IBOutlet weak var pieView: PieChartView!
    
    @IBOutlet weak var pieLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(pieCell: pieCellData) {
        pieView.holeRadiusPercent = 0.4
        pieView.holeColor = NSUIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
        pieView.legend.textColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
        pieView.animate(yAxisDuration: 2)
        pieView.drawEntryLabelsEnabled = false
        pieView.legend.font = UIFont(name: "Verdana", size: 12)!
        
        pieView.data = pieCell.chartDetail
        pieLabel.text = pieCell.chartName
    }
    
}
