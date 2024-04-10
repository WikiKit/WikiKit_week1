//
//  3_LayoutComponents.swift
//  BasicComponents
//
//  Created by 정종인 on 4/10/24.
//

import SwiftUI

struct LayoutComponents: View {
    var body: some View {
        /// VStack - 다른 친구들을 위에서 아래로 줄세우는 친구
        ///
        /// 뷰를 위에서 아래로 쭉 줄세우는 컴포넌트입니다.
        VStack {
            ExampleViews()
        }

        Divider() // 구분이 쉽도록 그냥 넣어주었습니다.

        /// HStack - 다른 친구들을 왼쪽에서 오른쪽으로 줄세우는 친구
        ///
        /// 뷰를 Leading에서 Trailing으로 쭉 줄세우는 컴포넌트입니다.
        /// (아랍권 등에서는 오른쪽에서 왼쪽으로 줄세워집니다)
        HStack {
            ExampleViews()
        }

        Divider()

        /// ZStack - 다른 친구들을 겹쳐서 쌓는 친구
        ///
        /// 뷰를 바닥에서부터 하나씩 차곡차곡 쌓습니다.
        ZStack {
            ExampleViews()
        }

        Divider()

        /// ScrollView - 키 큰 친구들을 아래까지 볼 수 있게 하는 친구
        ///
        /// ScrollView는 하위 뷰들을 스크롤 가능하게 합니다.
        ScrollView {
            ExampleViews() * 30
        }

        Divider()

        /// List - 리스트 형태로 표현하는 친구
        ///
        /// List는 ScrollView와 유사합니다.
        /// 하지만 애플에서 미리 지정한 스타일대로 표현됩니다.
        List {
            ExampleViews() * 30
        }

        Divider()

        /// ForEach - 친구들을 만들어주는 친구
        ///
        /// 배열 등 컬렉션에 저장된 데이터에 대해 각각 뷰로 만들어줍니다.
        /// Tip : 대부분의 경우 ScrollView와 같이 사용됩니다.
        ///     ScrollView 안에 ForEach를 넣어주면 됩니다.
        ForEach([0, 5, 2, 3, 1, 4], id: \.self) { number in
            Text("이 친구의 차례입니다 : \(number)")
        }
    }

    /// ExampleViews()는 
    /// ```
    /// Text("첫 번째")
    /// Text("두 번째")
    /// Text("세 번째")
    /// ``` 
    /// 와 완벽하게 동일합니다.
    @ViewBuilder
    private func ExampleViews() -> some View {
        Text("첫 번째")
        Text("두 번째")
        Text("세 번째")
    }
}

/// 이 아래 코드는 `*` (곱하기) 연산을 뷰에도 적용시키기 위해 작성하였습니다.
/// 뷰에 `* 3` 를 적용하면 3번 표현됩니다.
extension View {
    @ViewBuilder
    static func *(lhs: Self, rhs: Int) -> some View {
        ForEach(0..<rhs, id: \.self) { _ in
            lhs
        }
    }
}

#Preview {
    LayoutComponents()
}
