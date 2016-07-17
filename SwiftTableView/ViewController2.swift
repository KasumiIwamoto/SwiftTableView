//
//  ViewController2.swift
//  SwiftTableView
//
//  Created by 岩本果純 on 2016/07/17.
//  Copyright © 2016年 KasumiIwamoto. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var id: Int!   // this value should be set from outer
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func tapBack(sender: AnyObject) {
         dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if id != nil {
            myLabel.text = String(id)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
