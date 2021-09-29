//
//  ViewController.swift
//  Wifi Tester
//
//  Created by Scott Crawshaw on 9/29/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wifi_button: UIButton!
    @IBOutlet weak var wifi_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func refresh(_ sender: Any) {
        wifi_label.text = "worked"
    }
}

