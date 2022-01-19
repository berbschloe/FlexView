//
//  FlexView.swift
//  FlexView
//
//  Created by Brandon Erbschloe on 5/7/21.
//

import SwiftUI

public struct FlexView<Data: Collection, Content: View>: View where Data.Element: Hashable {
    
    private let data: Data
    private let alignment: HorizontalAlignment
    private let spacing: CGFloat
    private let content: (Data.Element) -> Content
    
    @State private var availableWidth: CGFloat = 0
    
    public init(_ data: Data, alignment: HorizontalAlignment = .leading, spacing: CGFloat = 8, content: @escaping (Data.Element) -> Content) {
        self.data = data
        self.spacing = spacing
        self.alignment = alignment
        self.content = content
    }

    public var body: some View {
        ZStack(alignment: Alignment(horizontal: alignment, vertical: .center)) {
            Rectangle().foregroundColor(Color.clear).frame(height: 0).readSize { size in
                availableWidth = size.width
            }
            _FlexView(
                availableWidth: availableWidth,
                data: data,
                alignment: alignment,
                spacing: spacing,
                content: content
            )
        }
    }
}
