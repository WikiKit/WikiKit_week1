//
//  FirstView.swift
//  DesignSystem
//
//  Created by 윤동주 on 4/9/24.
//

import SwiftUI

struct FirstView: View {
    
    var body: some View {
        VStack {
            /// code로 구현한 Color를 적용한 예시
            Text("안녕하세요.뉴그레이입니다.")
                .foregroundStyle(Color.newgrey)
            /// Asset으로 만든 Color를 적용한 예시
            Text("커스터마이징된 Font입니다.")
                .foregroundStyle(Color.niceblack)
                .font(.pretendardBold28)
            /// Hexcode를 반영한 Color를 적용한 예시
            Text("안녕하세요.#111111는 검은색입니다.")
                .foregroundStyle(Color(hex: "#111111"))
            /// Modifier를 적용한 예시
            Text("TextModifier 적용")
                .modifier(TextModifier())
        }
    }
}

#Preview {
    FirstView()
}
