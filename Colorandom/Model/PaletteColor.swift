//
//  PaletteColor.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import Foundation
import SwiftUI

struct PaletteColor {
    var color: Color
    
    init(color: Color) {
        self.color = color
    }
    
    func getHEXValue() -> String {
        let rgbValue: RGB = self.getRGBValue()
        
        let hex: Int = (Int)(rgbValue.red * 255) << 16 | (Int)(rgbValue.green * 255) << 8 | (Int)(rgbValue.blue * 255) << 0
        
        return String(format: "#%06x", hex).uppercased()
    }
    
    func getHSBValue() -> HSB {
        var hue: CGFloat = 0.0
        var saturation: CGFloat = 0.0
        var brightness: CGFloat = 0.0
        var alpha: CGFloat = 0.0
        
        let hslColor = UIColor(self.color)
        hslColor.getHue(&hue,
                        saturation: &saturation,
                        brightness: &brightness,
                        alpha: &alpha)
        
        return HSB(hue: hue,
                   saturation: saturation,
                   brightness: brightness,
                   alpha: alpha)
    }
    
    func getRGBValue() -> RGB {
        var red: CGFloat  = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var alpha: CGFloat = 0.0

        let uiColor = UIColor(self.color)
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return RGB(red: red,
                   green: green,
                   blue: blue,
                   alpha: alpha)
    }
}


