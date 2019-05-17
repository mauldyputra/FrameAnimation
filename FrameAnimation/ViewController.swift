//
//  ViewController.swift
//  FrameAnimation
//
//  Created by Mauldy Putra on 17/05/19.
//  Copyright © 2019 DeveloperAcademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myNewView = UIView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myNewView.layer.cornerRadius = 50
        
        myNewView.backgroundColor = UIColor.blue
        view.addSubview(myNewView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        myNewView.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer){
//        guard sender.view != nil else {return}
        
        if sender.state == .ended{
            let animator = UIViewPropertyAnimator(duration: 1, curve: .easeInOut, animations: {
                sender.view!.center.x = CGFloat(Int.random(in: 0...300))
                sender.view!.center.y = CGFloat(Int.random(in: 0...800))
        })
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveLinear, animations: {
                self.myNewView.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
            }, completion: nil)
            animator.startAnimation()
        }
    }
}
//        let circle = UIBezierPath(arcCenter: CGPoint(x: 100, y: 100), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
//
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.path = circle.cgPath
//
//        //change the fill color
//        shapeLayer.fillColor = UIColor.clear.cgColor
//        //you can change the stroke color
//        shapeLayer.strokeColor = UIColor.red.cgColor
//        //you can change the line width
//        shapeLayer.lineWidth = 3.0
//
//        view.layer.addSublayer(shapeLayer)

//
//Fade in, Fade out
//        UIView.animate(withDuration: 2, delay: 0, options: [.autoreverse, .repeat], animations: {
//            myNewView.alpha = 0
//            myNewView.alpha = 1
//        }, completion: nil)


//        myNewView.alpha = 0
//        UIView.animate(withDuration: 3) {
//            myNewView.alpha = 1
//            myNewView.frame = CGRect(x: 100, y: 300, width: 100, height: 100)
//        }

// 2 kali gerak
//        UIView.animate(withDuration: 2, delay: 0, options: .curveLinear, animations: {
//            myNewView.alpha = 0.5
//            myNewView.frame = CGRect(x: 250, y: 500, width: 250, height: 250)
//        }) { (isfinished) in
//            UIView.animate(withDuration: 3, animations: {
//                myNewView.alpha = 1
//                myNewView.frame = CGRect(x: 300, y: 100, width: 250, height: 250)
//            })
//        }
