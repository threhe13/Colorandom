//
//  PaletteColorViewModel.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import Foundation
import SwiftUI

class PaletteColorViewModel: ObservableObject {
    
    //TODO: PaletteColor 타입의 배열로 재구성
    @Published var colors: [Color] = []
    
    // Default number of color is four
    let numberOfColors: Int = 4
    
    init() {
        generateAllColor()
    }
    
    func generateRandomColor() -> Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: .random(in: 0...1)
        )
    }
    
    func generateAllColor() {
        var colorInstance: [Color] = []
        
        for _ in 0..<numberOfColors {
            let randomColor = generateRandomColor()
            colorInstance.append(randomColor)
        }
        
        self.colors = colorInstance
    }
}
