//
//  ViewController.swift
//  Pushbase
//
//  Created by Tyler Furby on 8/25/17.
//  Copyright © 2017 Furby Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var circleView: UIView!
    @IBOutlet var circleView1: UIView!
    @IBOutlet var circleView2: UIView!
    @IBOutlet var circleView3: UIView!
    @IBOutlet var circleView4: UIView!
    @IBOutlet var circleView5: UIView!
    @IBOutlet var circleView6: UIView!
    @IBOutlet var circleView7: UIView!
    @IBOutlet var circleView8: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        circleView.transform = CGAffineTransform(scaleX: 415, y: 0)
        circleView1.transform = CGAffineTransform(scaleX: 415, y: 0)
        circleView2.transform = CGAffineTransform(scaleX: 415, y: 0)
        circleView3.transform = CGAffineTransform(scaleX: 415, y: 0)
        circleView4.transform = CGAffineTransform(scaleX: 415, y: 0)
        circleView5.transform = CGAffineTransform(scaleX: 415, y: 0)
        circleView6.transform = CGAffineTransform(scaleX: 415, y: 0)
        circleView7.transform = CGAffineTransform(scaleX: 415, y: 0)
        circleView8.transform = CGAffineTransform(scaleX: 415, y: 0)
        
        let timingFunction = CAMediaTimingFunction(controlPoints: 5/6, 0.2, 2/6, 0.9)
        
        CATransaction.begin()
        CATransaction.setAnimationTimingFunction(timingFunction)
        
        UIView.animate(withDuration: 1.0) {self.circleView.transform = CGAffineTransform.identity}
        UIView.animate(withDuration: 1.1) {self.circleView1.transform = CGAffineTransform.identity}
        UIView.animate(withDuration: 1.2) {self.circleView2.transform = CGAffineTransform.identity}
        UIView.animate(withDuration: 1.3) {self.circleView3.transform = CGAffineTransform.identity}
        UIView.animate(withDuration: 1.4) {self.circleView4.transform = CGAffineTransform.identity}
        UIView.animate(withDuration: 1.5) {self.circleView5.transform = CGAffineTransform.identity}
        UIView.animate(withDuration: 1.6) {self.circleView6.transform = CGAffineTransform.identity}
        UIView.animate(withDuration: 1.7) {self.circleView7.transform = CGAffineTransform.identity}
        UIView.animate(withDuration: 1.8) {self.circleView8.transform = CGAffineTransform.identity}
        
        
        CATransaction.commit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

