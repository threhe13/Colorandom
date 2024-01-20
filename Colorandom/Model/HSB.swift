//
//  HSB.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import Foundation

struct HSB {
    var hue: CGFloat
    var saturation: CGFloat
    var brightness: CGFloat
    var alpha: CGFloat
    
    init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
        self.hue = hue
        self.saturation = saturation
        self.brightness = brightness
        self.alpha = alpha
    }
    
    func toString() -> String {
        return "\(self.hue.HueToInt()), \(self.saturation.SBtoInt()), \(self.brightness.SBtoInt()), \(self.alpha.SBtoInt())"
    }
    
    func toEachString() -> String {
        return "Hue: \(self.hue.HueToInt())\nSaturation: \(self.saturation.SBtoInt())\nBrightness: \(self.brightness.SBtoInt())\nAlpha: \(self.alpha.SBtoInt())"
    }
}

extension CGFloat {
    func HueToInt() -> Int {
        return Int(self * 360)
    }
    
    func SBtoInt() -> Int {
        return Int(self * 100)
    }
}
