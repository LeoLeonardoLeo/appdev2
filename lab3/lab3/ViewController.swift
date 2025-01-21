//
//  ViewController.swift
//  lab3
//
//  Created by Tech on 2025-01-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var value:Int = 0 //value displayed
    var doingMath:Bool = false
    var previousValue:Int = 0
    var operation:String?
    
    func doMath(a:Int, b:Int, op:String)->Int{
        switch op{
        case "+": return a + b
        case "-": return a - b
        case "*": return a * b
        case "/": return a / b
        default: return 0
        }
    }
    
    @IBAction func actionButton(_
        sender: UIButton){
        
        if let op = sender.titleLabel?.text{
            switch op{
            case "+", "-", "*", "/":
                doingMath = true
                operation = op
            case "=":
                value = doMath(a: previousValue, b: value, op: operation!)
           
            case "c":
                value = 0
                previousValue = 0
                doingMath = false
            default:
                break
            }
        }
        label.text = "\(value)"
    }
    
    @IBAction func numberButton(_
        sender: UIButton){
        
        if !doingMath{
            if value != 0{
                value = (10*value)+sender.tag
            }else{
                previousValue = value
                value = sender.tag
                doingMath = false
            }
        }
        
        label.text = "\(value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "\(value)"

    }
    
    
}

