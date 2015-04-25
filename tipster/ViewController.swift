//
//  ViewController.swift
//  tipster
//
//  Created by Dvid Silva on 4/25/15.
//  Copyright (c) 2015 hackership. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercentage: UITextField!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func billAmountChange(sender: UITextField) {
        var billFloat = (billAmount.text as NSString).doubleValue ;
        var tipPercent = (tipPercentage.text as NSString).doubleValue;
        var tip = (billFloat * tipPercent)/100;
        
        tipAmount.text = "$\(tip)";
        var total =   NSString(format:"%.2f", (billFloat + tip));
        totalAmount.text = "$\(total)";
    }
}

