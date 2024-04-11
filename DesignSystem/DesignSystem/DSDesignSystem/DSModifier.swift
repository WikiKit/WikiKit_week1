//
//  TextModifier.swift
//  DesignSystem
//
//  Created by 윤동주 on 4/11/24.
//

import SwiftUI


/// 어떤 View에 대해 font와 foregroundColor를 적용하는 Modifier
struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 50, weight: .bold, design: .rounded))
            .foregroundStyle(Color.newpink)
    }
}
