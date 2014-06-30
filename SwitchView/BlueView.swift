//
//  BlueView.swift
//  SwitchView
//
//  Created by demon on 14-6-25.
//  Copyright (c) 2014年 demon. All rights reserved.
//

import UIKit

class BlueView: UIViewController {
    
//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
////        super.init(coder: aDecoder)
//        // Custom initialization
//    }
    init(coder aDecoder: NSCoder!)
    {
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func prepareForSegue(segue: UIStoryboardSegue!,sender: AnyObject!){
//        //super.prepareForSegue(segue, sender: sender)
//        println(segue.identifier)
//        if (segue.identifier == "Load View") {
//            // pass data to next view
//        }
//        var msg="dada"
//        var send:YellowView=segue.destinationViewController as YellowView
//        send.setValue(msg, forKey: "data")
//        
//    }
    @IBAction func btnClick(sender: AnyObject) {
        var secondStoryboard:UIStoryboard=UIStoryboard(name: "Main", bundle: nil);
        var blueView : UIViewController=secondStoryboard.instantiateViewControllerWithIdentifier("BlueView") as UIViewController
        let yellow=YellowView()
        yellow.initWithClosure("我草")
//        self.dismissModalViewControllerAnimated(true)
//        var dicts:Array=[1,2,3]
//        NSNotificationCenter.defaultCenter().postNotificationName("yellow", object: "aaa")
        
        self.navigationController.pushViewController(blueView, animated: true)
        //self.presentModalViewController(blueView, animated: true)
        //[self presentModalViewController:[secondStoryboard instantiateInitialViewController] animated:YES];
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
