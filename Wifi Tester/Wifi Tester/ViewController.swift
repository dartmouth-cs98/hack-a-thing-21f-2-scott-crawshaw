//
//  ViewController.swift
//  Wifi Tester
//
//  Created by Scott Crawshaw on 9/29/21.
//  code adapted from https://www.ralfebert.de/ios/beginner-tutorials/iphone-app-xcode/

import UIKit
import Foundation
import SystemConfiguration.CaptiveNetwork
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var wifi_button: UIButton!
    @IBOutlet weak var wifi_label: UILabel!
    var locationManager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // code adapted from https://www.hackingwithswift.com/read/22/2/requesting-location-core-location
        // need to turn on location services to get wifi permission for IOS 13 and up, unfortunately
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestAlwaysAuthorization()
    }


    @IBAction func refresh(_ sender: Any) {
        // code adapted from https://blog.appnation.co/how-to-access-wifi-ssid-on-ios-13-using-swift-40c4bba3c81d
        
        var bssid: String?
        bssid = "No BSSID Found"
        if let interfaces = CNCopySupportedInterfaces() as NSArray? {
            for interface in interfaces {
                if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
                    bssid = interfaceInfo[kCNNetworkInfoKeyBSSID as String] as? String
                    break
                }
            }
        }
        
        wifi_label.text = bssid
    }
}

