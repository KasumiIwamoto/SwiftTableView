//
//  ViewController.swift
//  SwiftTableView
//
//  Created by 岩本果純 on 2016/07/17.
//  Copyright © 2016年 KasumiIwamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    @IBOutlet weak var myTableView: UITableView!
    func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return 32
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let storyboard = UIStoryboard(name:"Main",bundle:nil)
        let controller: ViewController2 = storyboard.instantiateViewControllerWithIdentifier("ViewController2") as! ViewController2
        controller.id = indexPath.row
        self.presentViewController(controller, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

