//
//  ViewController.swift
//  Calc2
//
//  Created by user on 19/11/2020.
//

import UIKit


class ViewController: UIViewController {
    
    var operand = ""
    var numberOne = ""
    var numberTwo = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//Функция нажатия кнопок
    @IBAction func imputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text=numberOne
        } else {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
            
        
        
            
            
        }
    }
    //Функция кнопkи очистка
    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        resultLabel.text = "0"
    }
  //функция нажатия операндов
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    //knopka =
    @IBAction func resultAction(_ sender: Any) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double(numberOne)! / Double(numberTwo)!
        case "*":
            result = Double(numberOne)! * Double(numberTwo)!
        case "+":
            result = Double(numberOne)! + Double(numberTwo)!
        case "-" :
            result = Double(numberOne)! - Double(numberTwo)!
            
        default:
         break
            if result.truncatingRemainder(dividingBy: 1.0) == 00 {
                resultLabel.text = String(Int(result))
            } else {
                resultLabel.text = String(result)
            }
                
            }
        }
    }


