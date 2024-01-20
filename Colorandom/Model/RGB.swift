//
//  RGB.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import Foundation

struct RGB {
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat
    var alpha: CGFloat
    
    init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
    
    func toString() -> String {
        return "\(self.red.RGBtoInt()), \(self.green.RGBtoInt()), \(self.blue.RGBtoInt()), \(self.alpha.RGBtoInt())"
    }
    
    func toEachString() -> String {
        return "Red: \(self.red.RGBtoInt())\nGreen: \(self.green.RGBtoInt())\nBlue: \(self.blue.RGBtoInt())\nAlpha: \(self.alpha.RGBtoInt())"
    }
}

extension CGFloat {
    func RGBtoInt() -> Int {
        return Int(self * 255)
    }
}
