//
//  CalculateViewController.swift
//  BarTipper
//
//  Created by Levi on 2016. 12. 03..
//  Copyright © 2016. levi. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    let tipp = Tipp()
    let baseString = "Give the parameters for me, please!"
    
    // UISegmented Controllers
    @IBOutlet weak var salary: UISegmentedControl!
    @IBOutlet weak var food: UISegmentedControl!
    @IBOutlet weak var speed: UISegmentedControl!
    @IBOutlet weak var service: UISegmentedControl!
    
    @IBOutlet weak var calculate_button: UIButton!
    @IBOutlet weak var cancel_button: UIButton!
    @IBOutlet weak var displayText: UILabel!
    
    @IBOutlet weak var value_salary: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cancel_button.layer.cornerRadius = 7
        calculate_button.layer.cornerRadius = 7
        displayText.text = baseString
        
        value_salary.keyboardType = UIKeyboardType.numberPad
    }
    
    func displayTipp() {
        let resultTipp = tipp.calculateTipp()
        let displayString = String(format: "Recommended tipp is %.2f", resultTipp)
        displayText.text = displayString
    }
    
    @IBAction func calculateButton(_ sender: AnyObject) {
        //value_salary.text = (String); tipp.salary
        tipp.tippAmount = Double(value_salary.text!)!
        displayTipp()
    }
    
    
    @IBAction func valueSalary(_ sender: UISegmentedControl) {
        switch salary.selectedSegmentIndex {
        case 0:
            tipp.tippsalary = 100000
        case 1:
            tipp.tippsalary = 300000
        case 2:
            tipp.tippsalary = 600000
        default:
            print ("Error")
        }
    }

    @IBAction func valueFood(_ sender: UISegmentedControl) {
        switch food.selectedSegmentIndex {
        case 0:
            tipp.tippFood = 1
        case 1:
            tipp.tippFood = 2
        case 2:
            tipp.tippFood = 3
        case 3:
            tipp.tippFood = 4
        case 4:
            tipp.tippFood = 5
        default:
            print("Error")
        }
    }

    @IBAction func valueSpeed(_ sender: UISegmentedControl) {
        switch speed.selectedSegmentIndex {
        case 0:
            tipp.tippSpeed = 1
        case 1:
            tipp.tippSpeed = 2
        case 2:
            tipp.tippSpeed = 3
        case 3:
            tipp.tippSpeed = 4
        case 4:
            tipp.tippSpeed = 5
        default:
            print("Error")
        }
    }
    
    @IBAction func valueService(_ sender: UISegmentedControl) {
        switch service.selectedSegmentIndex {
        case 0:
            tipp.tippService = 1
        case 1:
            tipp.tippService = 2
        case 2:
            tipp.tippService = 3
        case 3:
            tipp.tippService = 4
        case 4:
            tipp.tippService = 5
        default:
            print("Error")
        }
    }
}
