 //
//  main.swift
//  prog2.1
//
//  Created by Grant Berman on 7/18/18.
//  Copyright © 2018 Grant Berman. All rights reserved.
//

import Foundation

var frac: Fraction

    frac = Fraction.init()

 print("decimal value of u=\(frac.decimal)")
 

 var frac2: Fraction = Fraction(num: -5)

 print("frac2=\(frac2.description)")
 print("decimal value of x=\(frac2.decimal)")

var frac3 : Fraction = Fraction.init( num: -7 , den : 9 )

 print("frac3=\(frac3.description)")
 print("decimal value of v=\(frac3.decimal)")
 
 var frac4 : Fraction = Fraction.init(num: 2, den : 3)

 print("frac4=\(frac4.description)")
 print("decimal value of v=\(frac4.decimal)")
 
 var testFrac : Fraction
 
testFrac = frac4 + frac3
 print("(" + frac4.description + ")+(" + frac3.description + ")=" + testFrac.description)
 
testFrac = frac4 - frac3
 print("(" + frac4.description + ")-(" + frac3.description + ")=" + testFrac.description)
 
 testFrac = frac4 * frac3
 print("(" + frac4.description + ")*(" + frac3.description + ")=" + testFrac.description)
 
testFrac = frac4 / frac3
 print("(" + frac4.description + ")/(" + frac4.description + ")=" + testFrac.description)


 testFrac = frac4.add(3)
 print("(" + frac4.description + ")+3=" + testFrac.description)
 
 let z: Int = 2
 testFrac = frac4.divide(z)
 print("(" + frac4.description + ")/\(z)=" + testFrac.description)

 
 
 func +(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.add(f2)
 }
 
 func -(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.subtract(f2)
 }
 

 func *(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.multiply(f2)
 }

 
 func /(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.divide(f2)
 }
