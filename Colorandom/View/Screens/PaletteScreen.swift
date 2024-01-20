//
//  PaletteScreen.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import SwiftUI

struct PaletteScreen: View {
    @StateObject private var paletteColor = PaletteColorViewModel()
    
    private var gridItems = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("🎨 Colorandom")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(spacing: 20) {
                LazyVGrid(columns: gridItems, alignment: .center, spacing: 40) {
                    ForEach(paletteColor.colors, id: \.self) { color in
                        PaletteColorView(color: color)
                    }
                }
            }
            
            Spacer()
            
            HStack (spacing: 24) {
                //TODO: 색상 개수 선택 Dropdown
                Spacer()
                
                Button{
                    paletteColor.generateAllColor()
                } label: {
                    Label("Generate", systemImage: "arrow.triangle.2.circlepath")
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(100)
            }
            
            
        }
        .padding(20)
    }
}

#Preview {
    PaletteScreen()
}
