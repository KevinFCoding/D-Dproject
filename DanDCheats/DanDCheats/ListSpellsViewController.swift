//
//  ListSpellsViewController.swift
//  DanDCheats
//
//  Created by Samantha on 07/01/2021.
//

import UIKit

class ListSpellsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let data = DataLoader().spellData
        print(data)
    }
}
