//
//  ContentView.swift
//  Colorandom
//
//  Created by 김성현 on 1/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isScreenActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isScreenActive {
                PaletteScreen()
            } else {
                Image(uiImage: UIImage(named: "AppIcon") ?? UIImage())
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.isScreenActive.toggle()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
