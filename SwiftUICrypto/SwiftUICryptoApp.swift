//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by ivan trj  on 18.01.24.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
        }
    }
}
