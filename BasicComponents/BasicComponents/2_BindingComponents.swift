//
//  2_BindingComponents.swift
//  BasicComponents
//
//  Created by 정종인 on 4/10/24.
//

import SwiftUI

struct BindingComponents: View {
    @State private var text: String = ""

    @State private var sliderValue: Double = 50.0

    @State private var isOn: Bool = true

    @State private var pickerSelection: TodayLunch = .🍔

    @State private var datePickerSelection: Date = .now

    var body: some View {
        /// TextField - 글을 입력받는 친구
        ///
        /// TextField는 사용자의 텍스트 입력을 받을 수 있는 컴포넌트입니다.
        /// 여러 줄 입력은 TextEditor를 이용하세요.
        TextField("place holder", text: $text)
        TextEditor(text: $text)

        /// Slider - 특정 범위 안의 값을 선택하는 친구
        ///
        /// 볼륨 등 특정 범위의 값을 쉽게 선택할 수 있게 하는 컴포넌트입니다.
        Slider(value: $sliderValue, in: 0...100, step: 1)
        Text("슬라이더 값 : \(sliderValue)")

        /// Toggle - 켜고 끄는 것을 선택하는 친구
        ///
        /// 단순히 켜고 끄는 것을 선택할 수 있는 컴포넌트입니다.
        /// 설정 등에 많이 사용됩니다.
        Toggle("토글의 목적을 여기에 적어주세요.", isOn: $isOn)
        Text("현재 토글 값 : \(isOn)")

        /// Picker - 특정 값들 중 하나를 선택하는 친구
        ///
        /// 일정 선택지 중 하나를 고르게 하고 싶다면 picker를 사용해보세요!
        /// 여러가지 스타일이 있습니다.
        Picker("picker의 목적을 여기에 적어주세요", selection: $pickerSelection) {
            ForEach(TodayLunch.allCases, id: \.self) { menu in
                Text(menu.rawValue)
            }
        }
        .pickerStyle(.segmented) // 여기서 스타일을 바꿀 수 있어요.
        Text("현재 picker 값 : \(pickerSelection.rawValue)")

        /// DatePicker - 날짜 중 하나를 선택하는 친구
        ///
        /// 날짜를 선택할 때는 DatePicker를 사용할 수 있습니다.
        /// date picker style을 .graphical로 선택하면 달력이 표시됩니다.
        DatePicker("Date Picker의 목적을 여기에 적어주세요", selection: $datePickerSelection)
            .datePickerStyle(.graphical)
        Text("현재 Date Picker 값 : \(datePickerSelection)")
    }
    /// 뷰들 중 크기를 지정해주지 않으면 꽉 채우는 경우가 있습니다.
    /// 이런 뷰들은 "레이아웃 중립 (Layout Neutral)"이라고 지칭합니다.
    /// 레이아웃 중립인 뷰들은 자체적으로 크기나 위치를 결정하지 않습니다.
    /// Spacer, Divider, Group, Color 등의 뷰들은 모두 레이아웃 중립입니다.
    /// 위의 예시에서는 TextEditor, Toggle, Picker, DatePicker도 레이아웃 중립인 것을 확인할 수 있습니다.
}

enum TodayLunch: String, CaseIterable {
    case 🥦
    case 🍞
    case 🍔
    case 🍣
}

#Preview {
    BindingComponents()
}
