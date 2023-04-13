//
//  BillModal.swift
//  Tipsy
//
//  Created by Rasaal Ahmad on 12/04/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct BillModal{
    var bill = Bill()
    
    func calculateTotalBill()->Float{
        return (bill.totalBill/Float(bill.splitCount)) + (bill.totalBill * (Float(bill.selectedTip)/100.0))
    }
}
