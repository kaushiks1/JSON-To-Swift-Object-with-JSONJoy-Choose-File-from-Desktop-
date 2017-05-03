//
//  ViewController.swift
//  JSON_To_Swift_Object_JSONJoy
//
//  Created by Leo on 11/19/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let jsonStr = NSData(contentsOfFile: "/Users/leooverseas/Desktop/USA.json")
        let topDecoder = JSONDecoder(jsonStr!)
        if let dataDecoder = topDecoder["userdata"].dictionary {
            for (key, decoder) in dataDecoder {
                print("key: \(key)")
                if let mainIp = decoder.dictionary {
                    if let apps = mainIp["applications"]!.dictionary {
                        for (key, ip) in apps {
                            print("key: \(key)")
                            print("upbytes: \(ip["upbytes"].integer!)")
                            print("downbytes: \(ip["downbytes"].integer!)")
                        }
                    }
                }
            }
        }

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

