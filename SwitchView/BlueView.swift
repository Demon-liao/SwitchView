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
    required init(coder aDecoder: NSCoder)
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

    @IBAction func btnClick(sender: AnyObject) {
        var secondStoryboard:UIStoryboard=UIStoryboard(name: "Main", bundle: nil);
        var blueView : UIViewController=secondStoryboard.instantiateViewControllerWithIdentifier("BlueView") as UIViewController
        let yellow=YellowView()
        yellow.initWithClosure("我草")
        self.navigationController.pushViewController(blueView, animated: true)
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
