//
//  ViewController.swift
//  FrameAnimation
//
//  Created by Mauldy Putra on 17/05/19.
//  Copyright © 2019 DeveloperAcademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myNewView = UIView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        
        myNewView.backgroundColor = UIColor.blue

        view.addSubview(myNewView)
        
        UIView.animate(withDuration: 2, delay: 0, options: [.autoreverse, .repeat], animations: {
            myNewView.alpha = 0
            myNewView.alpha = 1
        }, completion: nil)
        //        myNewView.alpha = 0
        //        UIView.animate(withDuration: 3) {
        //            myNewView.alpha = 1
        //            myNewView.frame = CGRect(x: 100, y: 300, width: 100, height: 100)
        //        }
//        UIView.animate(withDuration: 2, delay: 0, options: .curveLinear, animations: {
//            myNewView.alpha = 0.5
//            myNewView.frame = CGRect(x: 250, y: 500, width: 250, height: 250)
//        }) { (isfinished) in
//            UIView.animate(withDuration: 3, animations: {
//                myNewView.alpha = 1
//                myNewView.frame = CGRect(x: 300, y: 100, width: 250, height: 250)
//            })
//        }
    }


}

