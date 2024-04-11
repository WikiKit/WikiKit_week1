//
//  Colors.swift
//  DesignSystem
//
//  Created by 윤동주 on 4/9/24.
//

import SwiftUI

extension Color {
    
    // 새로운 색상들을 RGB값을 적용하여 생성합니다.
    static let newgrey = Color(red: 169 / 255, green: 169 / 255, blue: 169 / 255)
    static let tomato = Color(red: 255 / 255, green: 99 / 255, blue: 71 / 255)
    static let greenyellow = Color(red: 173 / 255, green: 255 / 255, blue: 47 / 255)
    
    // Hexcode로 색상을 넣고 싶을 땐 이렇게 새로운 생성자를 선언하여 Color("#000000")과 같은 방식으로 사용합니다.
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
