//
//  ViewController.swift
//  Wifi Tester
//
//  Created by Scott Crawshaw on 9/29/21.
//  code adapted from https://www.ralfebert.de/ios/beginner-tutorials/iphone-app-xcode/

import UIKit
import Foundation
import SystemConfiguration.CaptiveNetwork

class ViewController: UIViewController {
    @IBOutlet weak var wifi_button: UIButton!
    @IBOutlet weak var wifi_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func refresh(_ sender: Any) {
        // code adapted from https://blog.appnation.co/how-to-access-wifi-ssid-on-ios-13-using-swift-40c4bba3c81d
        
        var bssid: String?
        bssid = "No BSSID Found"
        if let interfaces = CNCopySupportedInterfaces() as NSArray? {
            for interface in interfaces {
                if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
                    bssid = interfaceInfo[kCNNetworkInfoKeySSID as String] as? String
                    break
                }
            }
        }
        
        wifi_label.text = bssid
    }
}

