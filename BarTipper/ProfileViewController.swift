//
//  ProfileViewController.swift
//  BarTipper
//
//  Created by Levi on 2016. 12. 03..
//  Copyright © 2016. levi. All rights reserved.
//

import UIKit
import CoreData

class ProfileViewController: UIViewController {
    
    var profileName = [NSManagedObject]()
    
    @IBOutlet weak var name_value: UITextField!
    @IBOutlet weak var profile_save: UIButton!
    @IBOutlet weak var profile_cancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profile_save.layer.cornerRadius = 7
        profile_cancel.layer.cornerRadius = 7
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   /* NSA Object saving...  
     func saveName(itemToSave: String){
        let appDelegate = UIApplication.sharedApplication.delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        let entity = NSEntityDescription.entity("TippEntity", inManagedObjectContext: managedContext)
        
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        item.setValue(itemToSave, forKey: "name")
        
        do {
            try managedContext.save()
            profileName.append(item)
        } catch {
            print("Error, cant add the name.")
        }
        }*/
    
}
