//
//  ViewController.swift
//  ColorsApp
//
//  Created by Camila Maia on 30/05/18.
//  Copyright © 2018 Camila Maia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderOutlet: UISlider!

    @IBOutlet weak var viewSquare: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnYellow(_ sender: Any) {
        viewSquare.backgroundColor = UIColor.yellow
    }
    
    @IBAction func btnBlue(_ sender: Any) {
        viewSquare.backgroundColor = UIColor.blue
    }
    
    @IBAction func btnRed(_ sender: Any) {
        viewSquare.backgroundColor = UIColor.red
    }
    
    @IBAction func btnResetColors(_ sender: Any) {
        viewSquare.backgroundColor = UIColor.black
    }
    
    @IBAction func slider(_ sender: Any) {
        // CG = Core Graphics
        viewSquare.alpha = CGFloat(sliderOutlet.value)
    }
}

