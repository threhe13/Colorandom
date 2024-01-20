//
//  PaletteColorDescriptionView.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import SwiftUI

struct PaletteColorDescriptionView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    
    let selectedColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Color Description")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .imageScale(.large)
                }
            }
            .padding(.top)
            
            DescriptionCardView(palette:
                                    PaletteColor(color: selectedColor))
        }
        .padding(20)
        
        Spacer()
    }
    
}

#Preview {
    PaletteColorDescriptionView(
        selectedColor: Color.blue
    )
}
