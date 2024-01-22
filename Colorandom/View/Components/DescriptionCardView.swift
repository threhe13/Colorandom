//
//  DescriptionCardView.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import SwiftUI

struct DescriptionCardView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var palette: PaletteColor
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 150,  maxHeight: 150)
                    .foregroundStyle(palette.color)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray)
                    )
                    .shadow(
                        color: colorScheme == .dark ? Color.white.opacity(0.1) : Color.gray.opacity(0.1),
                        radius: 4,
                        x: 0,
                        y: 4
                    )
                    .padding(2)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("HEX")
                        .font(.headline)
                    
                    Text(palette.getHEXValue())
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("RGB")
                        .font(.headline)
                    
                    Text(palette.getRGBValue().toString())
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("HSB")
                        .font(.headline)
                    
                    Text(palette.getHSBValue().toString())
                }
            }
            .padding(.top)
        }
    }
}
