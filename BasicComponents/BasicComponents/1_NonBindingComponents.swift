//
//  ContentView.swift
//  BasicComponents
//
//  Created by 정종인 on 4/10/24.
//

import SwiftUI

struct NonBindingComponents: View {
    var body: some View {
        /// Text - 글을 표현해주는 친구
        ///
        /// Text는 글을 표현합니다.
        Text("Text는 글을 표현합니다.")

        /// Image - 이미지를 표현해주는 친구
        ///
        /// Image는 Assets에 있는 이미지들을 표현할 수 있습니다.
        /// Image(systemName: )은 SF Symbol을 표현할 수 있습니다.
        /// AsyncImage(url: )은 url로 사진을 불러올 수 있습니다.
        Image("Sample")
        Image(systemName: "film.fill")
        AsyncImage(url: URL(string: "https://picsum.photos/100/100"))

        /// Label - 이미지와 글을 같이 표현해주는 친구
        ///
        /// Label은 이미지와 글을 같이 표현할 때 유용한 컴포넌트입니다.
        /// 
        Label("Assets에 있는 이미지", image: "Sample")
        Label("SF Symbol에 있는 아이콘", systemImage: "signature")

        /// Button - 터치할 수 있는 친구
        ///
        /// Button은 터치 이벤트를 받을 수 있습니다.
        /// action과 label 부분으로 이루어져 있습니다.
        /// - action 부분에 "터치시 수행할 작업"을 명시합니다.
        /// - label 부분에 "이 버튼을 어떻게 표현할지"를 명시합니다.
        Button(action: {
            print("버튼을 누르면 디버그 창에 이 메세지가 뜹니다.")
        }, label: {
            Text("Button")
        })

        /// Divider - 구분선을 표현해주는 친구
        ///
        /// Divider은 희미한 직선을 표현합니다.
        /// 생각보다 사용할 곳이 많습니다.
        Divider()

        /// Spacer - 주변 친구들 사이 공간을 모두 차지하는 친구
        ///
        /// Spacer는 주변 컴포넌트 간 간격을 최대로 벌려줍니다.
        /// 예시 뷰에서는 이 Spacer() 때문에 다른 뷰들이 위쪽으로 전부 밀려났습니다.
        Spacer()
    }
    /// 눈치 채신 분들이 있나요?
    /// VStack을 넣어주지 않아도 뷰들이 위에서 아래로 줄세워진 것을 볼 수 있죠.
    /// 궁금하신 분들은 `View` 프로토콜, `@ViewBuilder`,
    /// 그리고 예약어 `some`에 대해 더 알아보시는 것을 추천드립니다.
}

#Preview {
    NonBindingComponents()
}
