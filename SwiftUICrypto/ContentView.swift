//
//  ContentView.swift
//  SwiftUICrypto
//
//  Created by ivan trj  on 18.01.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Secondary Text Color")
                    .foregroundStyle(Color.theme.secondaryText)

                
                Text("Red Color")
                    .foregroundStyle(Color.theme.red)

                
                Text("Green Color")
                    .foregroundStyle(Color.theme.green)

            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
