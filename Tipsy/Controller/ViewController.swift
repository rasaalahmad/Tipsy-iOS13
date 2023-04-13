//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var billModal = BillModal()
    @IBOutlet weak var totalBillTextField: UITextField!
    @IBOutlet weak var splitCountText: UILabel!
    
    @IBOutlet weak var twentyTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var zeroTipButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func splitCountStepper(_ sender: UIStepper) {
        splitCountText.text = String(Int(sender.value))
        billModal.bill.splitCount = Int(sender.value)
    }
    
    
    @IBAction func tipButtonPress(_ sender: UIButton) {
        sender.isSelected = true
        updateTipsButtonUI(sender.currentTitle!)
    }
    
    private func updateTipsButtonUI(_ tip:String){
        switch(tip){
        case "0%":
            tenTipButton.isSelected = false
            twentyTipButton.isSelected = false
            billModal.bill.selectedTip = 0
        case "10%":
            zeroTipButton.isSelected = false
            twentyTipButton.isSelected = false
            billModal.bill.selectedTip = 10
        case "20%":
            tenTipButton.isSelected = false
            zeroTipButton.isSelected = false
            billModal.bill.selectedTip = 20
        default:
            print("None")
        }
    }
    
    @IBAction func CalculateTotalBillPressed(_ sender: UIButton) {
        billModal.bill.totalBill = Float(totalBillTextField.text!) ?? 0.0
        self.performSegue(withIdentifier: "totalBillView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "totalBillView" {
            let desinationView = segue.destination as! TotalBillViewController
            desinationView.billModel = billModal
        }
    }
    
}

