//
//  TotalBillViewController.swift
//  Tipsy
//
//  Created by Rasaal Ahmad on 12/04/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class TotalBillViewController: UIViewController {

    var billModel = BillModal()
    override func viewDidLoad() {
        super.viewDidLoad()
        splitAndTipText.text = String("Split between \(billModel.bill.splitCount) people, with \(billModel.bill.selectedTip)% tip.")
        totalBillText.text = String(format: "%.2f", billModel.calculateTotalBill())
    }
    
    @IBOutlet weak var splitAndTipText: UILabel!
    @IBOutlet weak var totalBillText: UILabel!
    @IBAction func RecalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
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
