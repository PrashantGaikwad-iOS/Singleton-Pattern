//
//  ViewController.swift
//  Singleton Pattern
//
//  Created by Prashant G on 1/21/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //In a single line you can access easily
        LocationManager.shared.requestForLocation() // "Location granted"
        //Access variable value
        print(LocationManager.shared.locationGranted ?? false) // true
        
    }
}

class LocationManager{
    
    static let shared = LocationManager()
    
    var locationGranted: Bool?
    //Initializer access level change now
    private init(){}
    
    func requestForLocation(){
        //Code Process
        locationGranted = true
        print("Location granted")
    }
    
}
