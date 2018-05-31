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
    
    @IBAction func btnAddYellow(_ sender: Any) {
        switch viewSquare.backgroundColor {
        case UIColor.black:
            viewSquare.backgroundColor = UIColor.yellow
        case UIColor.blue:
            viewSquare.backgroundColor = UIColor.green
        case UIColor.red:
            viewSquare.backgroundColor = UIColor.orange
        default:
            return
        }
    }
    
    @IBAction func btnAddBlue(_ sender: Any) {
        switch viewSquare.backgroundColor {
        case UIColor.black:
            viewSquare.backgroundColor = UIColor.blue
        case UIColor.yellow:
            viewSquare.backgroundColor = UIColor.green
        case UIColor.red:
            viewSquare.backgroundColor = UIColor.purple
        default:
            return
        }
    }

    @IBAction func btnAddRed(_ sender: Any) {
        switch viewSquare.backgroundColor {
        case UIColor.black:
            viewSquare.backgroundColor = UIColor.red
        case UIColor.yellow:
            viewSquare.backgroundColor = UIColor.orange
        case UIColor.blue:
            viewSquare.backgroundColor = UIColor.purple
        default:
            return
        }
    }

    @IBAction func slider(_ sender: Any) {
        // CG = Core Graphics
        viewSquare.alpha = CGFloat(sliderOutlet.value)
    }

    @IBAction func btnResetColors(_ sender: Any) {
        viewSquare.backgroundColor = UIColor.black
    }
}

