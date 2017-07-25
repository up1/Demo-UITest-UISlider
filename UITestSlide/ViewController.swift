//
//  ViewController.swift
//  UITestSlide
//
//  Created by somkiat puisungnoen on 7/24/2560 BE.
//  Copyright © 2560 ___UP1___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySlider4: UISlider!
    @IBOutlet weak var mySlider3: UISlider!
    @IBOutlet weak var mySlide2: UISlider!
    @IBOutlet weak var mySlide: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let trans = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2));
        mySlide2.transform = trans;
        
        let trans3 = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2));
        mySlider3.transform = trans3;
        
        let trans4 = CGAffineTransform(rotationAngle: CGFloat(-Double.pi));
        mySlider4.transform = trans4;
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

