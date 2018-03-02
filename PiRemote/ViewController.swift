//
//  ViewController.swift
//  PiRemote
//
//  Created by Noah Schairer on 3/1/18.
//  Copyright © 2018 nschairer. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func forward(_ sender: Any) {
        Alamofire.request("http://IPADDRESS:PORT/forward").responseString { (printed) in
            let result = printed.description
            print(result)
        }
    }
    @IBAction func backward(_ sender: Any) {
        Alamofire.request("http://IPADDRESS:PORT/backward").responseString { (printed) in
            let result = printed.description
            print(result)
        }
    }
    @IBAction func left(_ sender: Any) {
        Alamofire.request("http://IPADDRESS:PORT/left").responseString { (printed) in
            let result = printed.description
            print(result)
        }
    }
    @IBAction func right(_ sender: Any) {
        Alamofire.request("http://IPADDRESS:PORT/right").responseString { (printed) in
            let result = printed.description
            print(result)
        }
    }
    @IBAction func stop(_ sender: Any) {
        Alamofire.request("http://IPADDRESS:PORT/stop").responseString { (printed) in
            let result = printed.description
            print(result)
        }


}
}

