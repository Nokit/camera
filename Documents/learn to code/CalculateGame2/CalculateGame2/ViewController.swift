//
//  ViewController.swift
//  CalculateGame2
//
//  Created by Naoki Toyosato on 2015/09/15.
//  Copyright © 2015年 Naoki Toyosato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num3: UILabel!
    @IBOutlet weak var num4: UILabel!
    @IBOutlet weak var Answer: UILabel!
    @IBOutlet weak var op1: UIButton!
    @IBOutlet weak var op2: UIButton!
    @IBOutlet weak var op3: UIButton!
    
    @IBAction func op1(sender: UIButton) {
        whichOp = 1
    }
    @IBAction func op2(sender: UIButton) {
        whichOp = 2
    }
    @IBAction func op3(sender: UIButton) {
        whichOp = 3
    }
    
    
    @IBAction func plus(sender: UIButton) {
        if whichOp == 1 {
            op1.setTitle("＋", forState:.Normal)
        } else if whichOp == 2 {
            op2.setTitle("＋", forState:.Normal)
        } else {
            op3.setTitle("＋", forState:.Normal)
        }
        
    }
    @IBAction func minus(sender: UIButton) {
        if whichOp == 1 {
            op1.setTitle("ー", forState:.Normal)
        } else if whichOp == 2 {
            op2.setTitle("ー", forState:.Normal)
        } else {
            op3.setTitle("ー", forState:.Normal)
        }

        
    }
    @IBAction func multiple(sender: UIButton) {
        if whichOp == 1 {
            op1.setTitle("×", forState:.Normal)
        } else if whichOp == 2 {
            op2.setTitle("×", forState:.Normal)
        } else {
            op3.setTitle("×", forState:.Normal)
        }
    }
    @IBAction func division(sender: UIButton) {
        if whichOp == 1 {
            op1.setTitle("÷", forState:.Normal)
        } else if whichOp == 2 {
            op2.setTitle("÷", forState:.Normal)
        } else {
            op3.setTitle("÷", forState:.Normal)
        }
    }
    var random:[UInt32] = [0,0,0,0]
    var whichOp = 1
    var results:UInt32 = 0
    
    func shuffleAndShow() {
        for i in 0...3{
            random[i] = arc4random()%10
            num1.text = "\(random[0])"
            num2.text = "\(random[1])"
            num3.text = "\(random[2])"
            num4.text = "\(random[3])"
        }
    }
    
    func calculate(){
        if op1.currentTitle == "×" || op1.currentTitle == "÷"{
            if op1.currentTitle == "×"{
                results = random[0] * random[1]
            } else {
                results = random[0] / random[1]
            }
        }else if op2.currentTitle == "×" || op2.currentTitle == "÷" {
            if op2.currentTitle == "×"{
                results = random[1] * random[2]
            } else {
                results = random[1] / random[2]
            }
        }else if op3.currentTitle == "×" || op3.currentTitle == "÷" {
            if op3.currentTitle == "×"{
                results = random[2] * random[3]
            } else {
                results = random[2] / random[3]
            }
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        shuffleAndShow()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

