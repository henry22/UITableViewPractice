//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by Henry on 5/17/15.
//  Copyright (c) 2015 Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewObject: UITableView!
    
    var foodNames = ["Food1", "Food2", "Food3", "Food4", "Food5", "Food6", "Food7", "Food8"]
    
    var foodImages = ["image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text = foodNames[indexPath.row]
        
        var images = UIImage(named: foodImages[indexPath.row])
        cell.imageView?.image = images
        
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
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

