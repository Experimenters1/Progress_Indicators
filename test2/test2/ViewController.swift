//
//  ViewController.swift
//  test2
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
        hub.indicatorView = JGProgressHUDPieIndicatorView()
        hub.textLabel.text = "Downloading"
        hub.detailTextLabel.text = "0%"
        hub.show(in: view)
        
        var progress: Float =  0.0
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){timer in
            progress += 0.1
            hub.setProgress(progress, animated: true)
            let value : Float =  progress / 1.0
            hub.detailTextLabel.text = "\(Int (value * 100.0))%"
            if progress > 1.0 {
                timer.invalidate()
                
                hub.indicatorView = JGProgressHUDSuccessIndicatorView()
                hub.textLabel.text = "Done!"
                hub.detailTextLabel.text = nil
                hub.dismiss(afterDelay: 3)
                
            }
            
        }
    }
}

