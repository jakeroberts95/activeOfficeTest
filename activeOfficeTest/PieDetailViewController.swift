//
//  DetailViewController.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 11/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//

import UIKit
import Charts

class DetailViewController: UIViewController {
    // Assign outlets
    
    // Title
    @IBOutlet weak var detailLabel: UILabel!
    
    // Pie Chart
    @IBOutlet weak var pieView: PieChartView!
    
    // Descriptor labels
    @IBOutlet weak var parameterLabel1: UILabel!
    @IBOutlet weak var parameterLabel2: UILabel!
    @IBOutlet weak var parameterLabel3: UILabel!
    @IBOutlet weak var parameterLabel4: UILabel!
    @IBOutlet weak var parameterLabel5: UILabel!
    @IBOutlet weak var parameterLabel6: UILabel!
    
    // Value labels
    @IBOutlet weak var parameterValueLabel1: UILabel!
    @IBOutlet weak var parameterValueLabel2: UILabel!
    @IBOutlet weak var parameterValueLabel3: UILabel!
    @IBOutlet weak var parameterValueLabel4: UILabel!
    @IBOutlet weak var parameterValueLabel5: UILabel!
    @IBOutlet weak var parameterValueLabel6: UILabel!
    
    // Define data object variable
    var pieDetail: pieCellData!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()

        // Do any additional setup after loading the view.
    }
    
    // Function assigning values to labels
    func setUI() {
        pieView.holeRadiusPercent = 0.4
        pieView.holeColor = NSUIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
        pieView.legend.textColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
        pieView.animate(yAxisDuration: 2)
        pieView.drawEntryLabelsEnabled = false
        pieView.legend.font = UIFont(name: "Verdana", size: 12)!
        
        
        detailLabel.text = pieDetail.chartName
        pieView.data = pieDetail.chartDetail
        parameterLabel1.text = pieDetail.parameterLabel1
        parameterLabel2.text = pieDetail.parameterLabel2
        parameterLabel3.text = pieDetail.parameterLabel3
        parameterLabel4.text = pieDetail.parameterLabel4
        parameterLabel5.text = pieDetail.parameterLabel5
        parameterLabel6.text = pieDetail.parameterLabel6
        parameterValueLabel1.text = String(pieDetail.parameterValue1)
        parameterValueLabel2.text = String(pieDetail.parameterValue2)
        parameterValueLabel3.text = String(pieDetail.parameterValue3)
        if pieDetail.parameterValue4 == true && pieDetail.chartName == "Energy Usage Data (W)" {
            parameterValueLabel4.text = "No"
        }
        else if pieDetail.parameterValue4 == false && pieDetail.chartName == "Energy Usage Data (W)" {
            parameterValueLabel4.text = "Yes"
        }
        else if pieDetail.parameterValue4 == false && pieDetail.chartName == "Energy Source Data (W)" {
            parameterValueLabel4.text = "Charged"
        }
        else if pieDetail.parameterValue4 == true && pieDetail.chartName == "Energy Source Data (W)" {
            parameterValueLabel4.text = "Charging"
        }
        else {
            parameterValueLabel4.text = ""
        }
        
        parameterValueLabel5.text = pieDetail.parameterValue5
        parameterValueLabel6.text = pieDetail.parameterValue6
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
