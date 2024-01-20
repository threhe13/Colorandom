//
//  PaletteColorView.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import SwiftUI

struct PaletteColorView: View {
    @State private var isColorDescription: Bool = false
    
    let color: Color
    
    var body: some View {
        Button {
            isColorDescription.toggle()
        } label: {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 150, height: 150)
                .foregroundStyle(color)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray)
                )
        }
        .sheet(isPresented: $isColorDescription, content: {
            PaletteColorDescriptionView(selectedColor: color)
                .presentationDetents([.medium, .large])
        })
    }
}

#Preview {
    PaletteColorView(color: Color.blue)
}
