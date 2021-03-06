//
//  ViewController.swift
//  activeOfficeTest
//
//  Created by Jake Roberts on 07/03/2020.
//  Copyright © 2020 Jake Roberts. All rights reserved.
//
import Foundation
import UIKit
import Charts

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var pieCells: [pieCellData] = []
    var lineCells: [lineCellData] = []
    var statusCells: [statusCellData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedSectionHeaderHeight = 60
        // Create arrays of pie cell data and line cell data
        pieCells = pieCellData.setupCellDataArray()
        lineCells = lineCellData.setupCellDataArray()
        statusCells = statusCellData.setupCellDataArray()
        
        // Hide Navigation controller navigation bar
        navigationController?.isNavigationBarHidden = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let index = self.tableView.indexPathForSelectedRow{
            self.tableView.deselectRow(at: index, animated: false)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "OverviewToPieDetail" {
            let destVC = segue.destination as! DetailViewController
            destVC.pieDetail = sender as? pieCellData
        }
    }
    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // Number of rows set equal to the number of items in all arrays added together
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let pieRows = pieCells.count
        let lineRows = lineCells.count
        let statusRows = statusCells.count
        let totalRows = pieRows + lineRows + statusRows
        return totalRows
    }
    
    // Configure which cells display which data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Display pie charts for first two cells
        if (indexPath.row < 2) {
            let pieCellRow = pieCells[indexPath.row]
            
          
            let cell = tableView.dequeueReusableCell(withIdentifier: "OverviewPieTableViewCell") as! OverviewPieTableViewCell
            
            cell.setupCell(pieCell: pieCellRow)
            
            return cell
        }
        
        // Display line graphs for next two cells
        else if (indexPath.row > 1 && indexPath.row < 4){
         
            let lineCellRow = lineCells[indexPath.row - 2]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "OverviewLineTableViewCell") as! OverviewLineTableViewCell
            
            cell.setupLineCell(lineCell: lineCellRow)
            
            return cell
        }
        
        // Display status values for final cell
        else {
            
            let statusCellRow = statusCells[0]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "OverviewStatusTableViewCell") as! OverviewStatusTableViewCell
            
            cell.setupStatusCell(statusCell: statusCellRow)
            return cell
        }
    }
    
    // Set height of cells in the table view
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {   // Height of 450 for pie and line graphs
            if (indexPath.row < 4) {
                return 450
            }
            // Height of 310 for status cells
            else {
                return 270
            }
        }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OverviewHeaderTableViewCell") as! OverviewHeaderTableViewCell

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pieDetail = pieCells[indexPath.row]
        performSegue(withIdentifier: "OverviewToPieDetail", sender: pieDetail)
    }
}
