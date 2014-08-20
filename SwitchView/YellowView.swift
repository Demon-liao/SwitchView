//
//  YellowView.swift
//  SwitchView
//
//  Created by demon on 14-6-25.
//  Copyright (c) 2014年 demon. All rights reserved.
//

import UIKit
var myClosure:String?
class YellowView: UIViewController {
   
    @IBOutlet var yellowBtn: UIButton!
//    @IBOutlet strong var btn1: UIButton
    
//    init(coder aDecoder: NSCoder!)
//    {
//        super.init(coder: aDecoder)
//    }
    
    func initWithClosure(closure:String?){
        myClosure = closure
       // println(myClosure)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.yellowBtn.setTitle(myClosure, forState: UIControlState.Normal)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back(sender: AnyObject) {
        self.navigationController.popToRootViewControllerAnimated(true)
    }

}
