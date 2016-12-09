//
//  scoredata.swift
//  Workout Companion
//
//  Created by kaiyue wang on 12/8/16.
//  Copyright © 2016 kaiyuewang. All rights reserved.
//

import UIKit

class datascore:NSObject,NSCoding
{
    var score:Int
//    var numtime:Int
    
    struct propertyKey{
        static let scoreKey = "score"
//        static let numtimeKey = "numtime"
    }
    static let DocumentsDirectory=FileManager().urls(for: .documentDirectory, in:.userDomainMask).first!
    
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("datascore")
    
   
    func encode(with aCoder: NSCoder)  {
        aCoder.encode(score, forKey: propertyKey.scoreKey)
//        aCoder.encode(numtime, forKey: propertyKey.numtimeKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObject(forKey: propertyKey.scoreKey) as! Int
        
        // Because photo is an optional property of Meal, use conditional cast.
//        let photo = aDecoder.decodeObject(forKey: propertyKey.numtimeKey) as! Int
        
        
        // Must call designated initializer.
        self.init(name: name)
    }
    
    init?(name:Int){
        score=name
        //        numtime=time
        super.init()
    }
    
    
}
