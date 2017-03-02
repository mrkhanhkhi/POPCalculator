//
//  ViewController.swift
//  POPCalculator
//
//  Created by Admin on 3/2/17.
//  Copyright © 2017 KhanhND. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var calculator = Calculator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func commandButtonTapped(sender: UIButton) {
        if let text = display.text, num = Double(text) {
            var clearDisplay = false
            switch sender.tag {
            case 0:
                calculator.commandEntered(num, nextCommand: nil)
                display.text = "\(calculator.currentValue)"
                clearDisplay = false
            case 1:
                calculator.commandEntered(num, nextCommand: AddCommand())
            case 2:
                calculator.commandEntered(num, nextCommand: SubCommand())
            case 3:
                calculator.commandEntered(num, nextCommand: MultiplyCommand())
            case 4:
                calculator.commandEntered(num, nextCommand: DivideCommand())
            case 5:
                calculator.clear()
            case 6:
                if let text = display.text {
                    let newText = text.substringToIndex(text.endIndex.predecessor())
                    display.text = newText
                }
                clearDisplay = true
            default:
                break
            }
            if clearDisplay {
                display.text = "0"
            }
        }


    }
    
    @IBAction func numEntered(sender: UIButton) {
        if let text = display.text {
            let tag = sender.tag
                if tag < 10 {
                    display.text = "\(tag)"
                } else {
                    display.text = "\(text)."
                }
            }
        }
}

