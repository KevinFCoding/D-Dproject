//
//  DiceViewController.swift
//  DanDCheats
//
//  Created by Samantha on 07/01/2021.
//

import UIKit

class DiceViewController: UIViewController {

    
    
    
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = ""
       
    }
   
    @IBAction func changetext(_ sender: Any) {
        let toint = textfield.text!
        let valeurMax:Int? = Int(toint)
        if (valeurMax == nil) {
            text.text = "Entre un nombre"
        }
        else{
            if(valeurMax!<0){
                text.text = "Trop petit"
            }
            else{
                var number = Int.random(in: 0..<valeurMax!)
                text.text = String(number)
            }
        }
    }
}
