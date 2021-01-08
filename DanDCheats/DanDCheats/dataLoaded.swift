//
//  dataLoaded.swift
//  DanDCheats
//
//  Created by Samantha on 07/01/2021.
//

import Foundation

public class DataLoader{
    @Published var spellData = [SpellData]()
    
    init(){
        load()
        sort()
    }
    func load(){
        if let fileLocation = Bundle.main.url(forResource: "mydata", withExtension: "json"){
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([SpellData].self, from: data)
                
                self.spellData = dataFromJson
            }
            catch{
                print(error)
            }
        }
    }
    func sort(){
        self.spellData.sorted(by: { $0.index < $1.index })
    }
}
