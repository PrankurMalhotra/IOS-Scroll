//
//  ViewController.swift
//  ScrollViewController
//
//  Created by Pasnoor,Sahitya on 2/8/16.
//  Copyright © 2016 Pasnoor,Sahitya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiScrollView: UIScrollView!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var simpleVC:SimpleViewController!
    @IBOutlet var complexVC:ComplexViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
        
        simpleVC = self.storyboard?.instantiateViewControllerWithIdentifier("simple") as! SimpleViewController
        complexVC = self.storyboard?.instantiateViewControllerWithIdentifier("complex") as! ComplexViewController
        
        self.addChildViewController(simpleVC)
        uiScrollView.addSubview(simpleVC.view)
        simpleVC.didMoveToParentViewController(self)
        

        var frameC:CGRect = complexVC.view.frame
        frameC.origin.x = 330
        complexVC.view.frame = frameC
        self.addChildViewController(complexVC)
        self.uiScrollView.addSubview(complexVC.view)
        complexVC.didMoveToParentViewController(self)
        

        self.uiScrollView.contentSize = CGSizeMake(640, 400)
        self.uiScrollView.pagingEnabled = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

