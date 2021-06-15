//
//  ViewController.swift
//  window-shopper
//
//  Created by Minaroid on 10/06/2021.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var preiceTxt: CurrencyTextField!
    
    @IBOutlet weak var hoursNumber: UILabel!
    
    @IBOutlet weak var hoursLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget( self, action: #selector(MainVC.calculate),for: .touchUpInside )
        preiceTxt.inputAccessoryView = calcBtn
        
        hoursLabel.isHidden = true
        hoursNumber.isHidden = true

    }
    
    @objc func calculate(){
       
        if let wage = wageTxt.text , let price = preiceTxt.text {
            if let wageNum = Double(wage) , let priceNum =  Double(price) {
                view.endEditing(true)
                hoursLabel.isHidden = false
                hoursNumber.isHidden = false
                hoursNumber.text = "\(Wage.gethours(forWage: wageNum, andPrice: priceNum))"
            }
            
        }
    }

    @IBAction func clearBtn(_ sender: Any) {
        hoursLabel.isHidden = true
        hoursNumber.isHidden = true
        
        wageTxt.text = ""
        preiceTxt.text = ""
    }
    
}

