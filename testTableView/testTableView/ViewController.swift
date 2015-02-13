//
//  ViewController.swift
//  testTableView
//
//  Created by Sieder Villareal on 2/13/15.
//  Copyright (c) 2015 shaideru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var testTableView: UITableView!
    var names = NSArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        names = ["Mark","Travis","Tom"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //
        let testTableIdentifier: String = "TestCell"
        
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(testTableIdentifier) as UITableViewCell
        
        if cell == 0 {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: testTableIdentifier)
        }
        
        cell.textLabel?.text = names.objectAtIndex(indexPath.row) as? String
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

