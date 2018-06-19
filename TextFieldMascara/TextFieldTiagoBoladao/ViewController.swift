//
//  ViewController.swift
//  TextFieldTiagoBoladao
//
//  Created by Desenvolvimento iOS on 12/05/17.
//  Copyright © 2017 Desenvolvimento iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textFieldTelefone: UITextField!
    @IBOutlet weak var textFieldCelular: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
    }

    func setup() {
        
        self.textFieldCelular.delegate = self
        self.textFieldTelefone.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if (textField === self.textFieldTelefone){
            
            if(range.length == 1){
                
                self.textFieldTelefone.text = nil
                
                return true
            }
            
            if (range.location == 14) {
                
                return false
                
            }
            
            
            switch string {
                
            case "1","2","3","4","5","6","7","8","9","0":
                print("OK")
                
            default:
                return false
                
                
            }
            
            if(range.length == 0 && range.location == 2) {
                
                textField.text = String(format: "(\(textField.text!)) \(string)")
                
                return false
            }
            
            
            if (range.length == 0 && range.location == 9) {
                
                textField.text = String(format: "\(textField.text!)-\(string)")
                
                return false;
            }
            
            
            
        }else if (textField === self.textFieldCelular){
            
            
            if(range.length == 1){
                
                self.textFieldCelular.text = nil
                
                return true
            }
            
            if (range.location == 15) {
                return false
                
            }
            
            
            
            
            switch string {
                
            case "1","2","3","4","5","6","7","8","9","0":
                print("OK")
                
            default:
                return false
                
                
            }
            
            if(range.length == 0 && range.location == 2) {
                
                
                textField.text = String(format: "(\(textField.text!)) \(string)")
                
                return false
            }
            
            
            if (range.length == 0 && range.location == 10) {
                
                textField.text = String(format: "\(textField.text!)-\(string)")
                
                return false;
            }
            
            
        }
        
        return true
        
    }


}

