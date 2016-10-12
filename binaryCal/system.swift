//
//  system.swift
//  binaryCal
//
//  Created by IkegamiYuki on 2016/10/05.
//  Copyright © 2016 IkegamiYuki. All rights reserved.
//

import Foundation
        
func square(num:Int) -> Int {
    var number = num
    var result = 1
    while number > 0 {
        result = result * 2
        number = number - 1
    }
    
    return result
}

func sqRoot(num:Int) -> Int {
    var result = 0
    while square(num: result) < num {
        result += 1
    }
    if num < square(num: result) {
        result -= 1
    }
    
    return result
}

func binaryFigure(num: Int) -> Int {
    var figure = 0
    while square(num: figure) <= num {
        figure += 1
    }
    
    return figure
}

func convertBinary(num: Int) -> Int {
    var binary = 0
    var inputNum = num
    while inputNum > 0 {
        var binarySun = 1
        var figure = binaryFigure(num: inputNum)
        while figure > 1 {
            binarySun *= 10
            figure -= 1
        }
        binary += binarySun
        inputNum = inputNum - square(num: sqRoot(num: inputNum))
    }
    
    return binary
}
