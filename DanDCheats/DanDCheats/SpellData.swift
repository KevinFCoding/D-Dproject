//
//  SpellData.swift
//  DanDCheats
//
//  Created by Samantha on 07/01/2021.
//

import Foundation

struct SpellData : Codable{
    var index: String
    var name: String
    var desc: String
    var higher_level: String
    //var compenents:
    var material: String
    var ritual: Bool
    var duration: String
    var concentration: Bool
    var casting_time: Int
    var level : Int
    var attack_type : String
}
