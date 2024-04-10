//
//  BasicComponentsApp.swift
//  BasicComponents
//
//  Created by 정종인 on 4/10/24.
//

import SwiftUI

@main
struct BasicComponentsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                VStack {
                    NonBindingComponents()
                }
                .tabItem {
                    Label("바인딩 없는 컴포넌트", systemImage: "1.circle")
                }

                VStack {
                    BindingComponents()
                }
                .tabItem {
                    Label("바인딩 있는 컴포넌트", systemImage: "2.circle")
                }

                VStack {
                    LayoutComponents()
                }
                .tabItem {
                    Label("레이아웃 컴포넌트", systemImage: "3.circle")
                }
            }
        }
    }
}
