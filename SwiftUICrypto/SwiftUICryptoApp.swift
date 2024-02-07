//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by Ivan Trajanovski  on 18.01.24.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
            .environmentObject(vm)
        }
    }
}
