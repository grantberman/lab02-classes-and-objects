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

print ( " frac = \(frac.num)/\(frac.den)")

frac.num = 5
frac.den = 8

print ( " frac = \(frac.num)/\(frac.den)")

var frac2: Fraction = Fraction()

frac2.num = 6
frac2.den =  10

print ( " frac2 = \(frac2.num)/\(frac2.den)")

var frac3 : Fraction = Fraction.init( num: -12 , den : 1 )

print ( " frac3 = \(frac3.num)/\(frac3.den)")

var frac4 : Fraction = Fraction.init(num: -5)

print ( " frac4 = \(frac4.num)/\(frac4.den)")

print ("frac4 = \(frac4.decimal)")
