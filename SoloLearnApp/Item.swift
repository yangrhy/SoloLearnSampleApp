//
//  Item.swift
//  SoloLearnApp
//
//  Created by Ricky Yang on 1/27/19.
//  Copyright © 2019 Ricky Yang. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding{
    var name:String
    static let Dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = Dir.appendingPathComponent("items")
    
    required convenience init?(coder aDecoder: NSCoder){
        let name = aDecoder.decodeObject(forKey: "name") as! String
        self.init(name: name)
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
    }
    
    init?(name:String){
        self.name=name
        super.init()
    }
}
