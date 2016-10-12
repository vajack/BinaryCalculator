//
//  main.swift
//  binaryCal
//
//  Created by IkegamiYuki on 2016/10/05.
//  Copyright © 2016 IkegamiYuki. All rights reserved.
//

import Foundation

if CommandLine.argc < 2 {
    print("Please press number to convert into binary: ",terminator: "")
    
    if let number = Int(readLine(strippingNewline: true)!){
        print("result: \(convertBinary(num: number))")
    }else{
        print("Press array is not number...")
    }
    
}else {
    if let number = Int(CommandLine.arguments[1]){
        print(convertBinary(num: number))
    }else{
        print("\(CommandLine.arguments[1]) is not number...")
    }
}
