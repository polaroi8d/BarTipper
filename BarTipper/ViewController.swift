//
//  ViewController.swift
//  BarTipper
//
//  Created by Levi on 2016. 12. 03..
//  Copyright © 2016. levi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profile_button: UIButton!
    @IBOutlet weak var calculate_button: UIButton!
    @IBOutlet weak var info_button: UIButton!
    @IBOutlet weak var exit_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profile_button.layer.cornerRadius = 7
        calculate_button.layer.cornerRadius = 7
        info_button.layer.cornerRadius = 7
        exit_button.layer.cornerRadius = 7
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Not recommended by the Apple, who the hell cares?
    @IBAction func exitButton(_ sender: AnyObject) {
        exit(0);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

