//
//  ViewController.swift
//  CoolHUDs
//
//  Created by Huy Vu on 8/15/23.
//

import JGProgressHUD
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DispatchQueue.main .asyncAfter(deadline: .now()+1, execute:  {
            self.showExample()
        })
    }
    
    func showExample(){
        let hub = JGProgressHUD()
        hub.textLabel.text = "Loaing"
        hub.detailTextLabel.text = "Please wait"
        hub.show(in: view)
    }


}

