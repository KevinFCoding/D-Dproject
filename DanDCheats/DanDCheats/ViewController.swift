//
//  ViewController.swift
//  DanDCheats
//
//  Created by Samantha on 08/01/2021.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func menuButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "MenuSegue", sender: self)
        
    }
    
}
