//
//  InfoViewController.swift
//  BarTipper
//
//  Created by Levi on 2016. 12. 07..
//  Copyright © 2016. levi. All rights reserved.
//

import UIKit
import CoreData

class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var githubButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        githubButton.layer.cornerRadius = 7
    }
    
    @IBAction func githubButtonAction(_ sender: AnyObject) {
         if let url = NSURL(string: "https://github.com/polaroi8d/Bar-Tipper-dollar"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
    }
    
}
