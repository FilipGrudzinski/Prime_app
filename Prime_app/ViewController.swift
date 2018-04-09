//
//  ViewController.swift
//  Prime_app
//
//  Created by Filip on 08.04.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func button(_ sender: Any){
        
        if let userNumberString = numberField.text {
            
            let userNumberInt = Int(userNumberString)
            
            if let number = userNumberInt {
                
                var prime = true
                
                var i = 2
                
                if number == 1 {
                    
                    prime = false
                    
                }
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        prime = false
                        
                    }
                    
                    i += 1
                    
                }
                if prime {
                    result.text = "\(number) is prime !"
                } else {
                    result.text = "\(number) is not prime"
                }
                
                
            } else {
                
                result.text = "Enter a positive whole number"
                
            }
            
            
        }
        
        
    }
    




    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

