//
//  Fraction.swift
//  prog2.1
//
//  Created by Grant Berman on 7/18/18.
//  Copyright © 2018 Grant Berman. All rights reserved.
//

import Foundation

class Fraction {
    
    private let num: Int
    private let den: Int
    
    //computed propertoes
    
    var decimal : Float {
        get {
            //converts ints to float and returns float value of the decimal
            return Float(self.num)/Float(self.den)
        }
    }
    
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    

    
    //INITAILIZERS
    
   convenience init() {                 //calls other init value which includes den check
    
        self.init(num: 0 , den: 1)
    }
    
    init (num : Int, den: Int){
        
        assert(den != 0, "Denominator cannot be zero")
        
        var num = num;
        var den = den;
        
        
            if(den < 0) {
                
                num = -num
                den = -den
            }
            
            for gcd in (1...den).reversed() {
                if(num%gcd == 0 && den%gcd==0) {
                    // Common denominator found,
                    // divide numerator and denominator
                    num /= gcd
                    den /= gcd
                    break
                }
            }
    
        
        self.num = num
        self.den = den
    }
    
    convenience init (num: Int ) {
        self.init(num : num, den : 1)
    }
    
    
    // METHODS
    
    func add (_ f: Fraction) -> Fraction {       //adds a fraction to itself
        return Fraction (num: self.num * f.den + self.den * f.num, den: self.den * f.den)
        
    }
    
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num * f.den - self.den * f.num, den: self.den * f.den)
        
    }
    
    func multiply (_ f :Fraction ) -> Fraction {
        return Fraction (num: self.num * self.num, den: self.den * f.den)
        
    }
    
    func divide(_ f: Fraction) -> Fraction {
        return Fraction (num: self.num * f.den, den: self.den * f.num)
        
    }
    
    static func add (_ f1: Fraction, to f2 : Fraction) -> Fraction {
        
        return Fraction(num: f2.den + f1.den * f2.num, den: f1.den * f2.den)
        
    }
    
    static func subtract(_ f1: Fraction, from f2: Fraction) -> Fraction {
        return f2.subtract(f1);
    }
    
    static func multiply(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    
    static func divide ( _ f1: Fraction, by f2: Fraction) -> Fraction{
        
        return f1.divide(f2)
        
        
    }
    
    func add(_ x: Int) -> Fraction {
        return Fraction(num: self.num + self.den*x,
                        den: self.den)
        
    }
    
    func subtract(_ x: Int) -> Fraction {
        return Fraction(num: self.num - self.den*x,
                        den: self.den)
        
    }
    
    func multiply(_ x: Int) -> Fraction {
        return Fraction(num: self.num*x, den: self.den)
    }
    
    
    func divide(_ x: Int) -> Fraction {
        return Fraction(num: self.num, den: self.den*x)
    }
    

    static func + (f1: Fraction, f2: Fraction) -> Fraction {
        return f1.add(f2)
    }
    
 
    static func - (f1: Fraction, f2: Fraction) -> Fraction {
        return f1.subtract(f2)
    }
    

    static func * (f1: Fraction, f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    

    static func / (f1: Fraction, f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    
    
    
}

