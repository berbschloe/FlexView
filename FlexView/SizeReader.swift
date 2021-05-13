//
//  SizeReader.swift
//  FlexView
//
//  Created by Brandon Erbschloe on 5/7/21.
//

import SwiftUI

extension View {
    
    func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
        background(
            GeometryReader { geometryProxy in
                Rectangle().foregroundColor(Color.clear).preference(key: SizePreferenceKey.self, value: geometryProxy.size)
            }
        ).onPreferenceChange(SizePreferenceKey.self, perform: onChange)
    }
}

private struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}
