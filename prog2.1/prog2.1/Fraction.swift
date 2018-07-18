//
//  Fraction.swift
//  prog2.1
//
//  Created by Grant Berman on 7/18/18.
//  Copyright © 2018 Grant Berman. All rights reserved.
//

import Foundation

class Fraction {
    
    var num: Int
    var den: Int
    
    //computed propertoes
    
    var decimal : Float {
        get {
            //converts ints to float and returns float value of the decimal
            return Float(self.num)/Float(self.den)
        }
    }
    
    var description: String {
        return "\(self.num)/ \(self.den)"
    }
    
    //INITAILIZERS
    
   convenience init() {                 //calls other init value which includes den check
    
        self.init(num: 0 , den: 1)
    }
    
    init (num : Int, den: Int){
        
        assert(den != 0, "Denominator cannot be zero")
        
        self.num = num
        self.den = den
        
    }
    
    convenience init (num: Int ) {
        self.init(num : num, den : 1)
    }
    
}
