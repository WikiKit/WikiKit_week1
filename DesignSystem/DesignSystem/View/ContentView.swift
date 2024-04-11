//
//  ContentView.swift
//  DesignSystem
//
//  Created by 윤동주 on 4/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationLink {
                FirstView()
            } label: {
                Text("FirstView로 이동")
                    .foregroundStyle(Color.newgrey)
                    .fontWeight(.black)
            }
        }
    }
}

#Preview {
    ContentView()
}
