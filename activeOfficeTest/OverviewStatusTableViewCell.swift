//
//  OverviewStatusTableViewCell.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 10/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import UIKit

class OverviewStatusTableViewCell: UITableViewCell {
    
    // Description label outlet variables
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var operatingLabel: UILabel!
    @IBOutlet weak var evLabel: UILabel!
    @IBOutlet weak var powerOutputLabel: UILabel!
    @IBOutlet weak var powerInputLabel: UILabel!
    @IBOutlet weak var carbonContentLabel: UILabel!
    
    // Status label outlet variables
    @IBOutlet weak var operatingStatusLabel: UILabel!
    @IBOutlet weak var evStatusLabel: UILabel!
    @IBOutlet weak var powerOutputStatusLabel: UILabel!
    @IBOutlet weak var powerInputStatusLabel: UILabel!
    @IBOutlet weak var carbonCostStatusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupStatusCell(statusCell: statusCellData) {
        
        // Configure text labels
        if (statusCell.carbonCost < 50) {
            carbonCostStatusLabel.textColor = .green
        }
        if (statusCell.carbonCost > 49) {
            carbonCostStatusLabel.textColor = .red
        }
        
        // Assign variables
        cellLabel.text = statusCell.cellTitleLabel
        operatingLabel.text = statusCell.operatingModeLabel
        evLabel.text = statusCell.numEVChargingLabel
        powerOutputLabel.text = statusCell.powerOutputLabel
        powerInputLabel.text = statusCell.powerInputLabel
        carbonContentLabel.text = statusCell.carbonCostLabel
        operatingStatusLabel.text = statusCell.operatingMode
        evStatusLabel.text = String(statusCell.numEVCharging)
        powerOutputStatusLabel.text = String(statusCell.powerOutput)
        powerInputStatusLabel.text = String(statusCell.powerInput)
        carbonCostStatusLabel.text = String(statusCell.carbonCost)
    }

}
