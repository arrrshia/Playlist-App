//
//  Styling.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/12/22.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == Color {
    static var backgroundColor: Color {
        Color(red: 1.00, green: 0.98, blue: 0.88)
    }
    static var rectColor: Color {
        Color(red: 0.38, green: 0.42, blue: 0.22)
    }
}
struct BackgroundColorStyle: ViewModifier {

    func body(content: Content) -> some View {
        return content
            .background(Color.backgroundColor)
    }
}

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.rectColor))
            .padding(.bottom)
    }
}

extension View {
    func customButton() -> ModifiedContent<Self, ButtonModifier> {
        return modifier(ButtonModifier())
    }
}

extension Text {
    func customTitleText() -> Text {
        self
            .fontWeight(.black)
            .font(.system(size: 36))
    }
}
