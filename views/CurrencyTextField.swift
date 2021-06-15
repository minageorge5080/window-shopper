//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Minaroid on 10/06/2021.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
   
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
    
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3086482457)
        layer.cornerRadius = 5.0
        textAlignment = .center
       
        if let p = placeholder {
            let place = NSAttributedString(string: p , attributes: [.foregroundColor : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
        }
       
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
 
