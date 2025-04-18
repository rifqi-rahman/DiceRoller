//
//  DiceView.swift
//  DiceRoller
//
//  Created by Rifqi Rahman on 09/04/25.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.white, .black)
            
                .padding(.bottom, 20)
            
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            
                }
    }
}

#Preview {
    DiceView()
}
