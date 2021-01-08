//
//  ViewController.swift
//  DanDCheats
//
//  Created by Kevin Fagot on 07/01/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var myScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func menuButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "MenuSegue", sender: self)
        
    }
    
}

