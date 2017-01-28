//
//  ViewController.swift
//  Alternate App Icon
//
//  Created by Matthew on 1/24/17.
//  Copyright © 2017 @TechWithMatthew on Twitter. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var segIconChanger: UISegmentedControl!

    
    @IBAction func btnAction(_ sender: Any) {
      
        SKStoreReviewController.requestReview()
        
    }
    
    @IBAction func segIconChangerAction(_ sender: Any) {
        
        if segIconChanger.selectedSegmentIndex == 0 {
            UIApplication.shared.setAlternateIconName(nil, completionHandler: nil)
        }
        else if segIconChanger.selectedSegmentIndex == 1 {
            UIApplication.shared.setAlternateIconName("Test1", completionHandler: nil)
        }
        else if segIconChanger.selectedSegmentIndex == 2 {
            UIApplication.shared.setAlternateIconName("Test2", completionHandler: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

