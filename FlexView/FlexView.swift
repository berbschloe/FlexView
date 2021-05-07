//
//  FlexView.swift
//  FlexView
//
//  Created by Brandon Erbschloe on 5/7/21.
//

import SwiftUI

public struct FlexView<Data: Collection, Content: View>: View where Data.Element: Hashable {
    
    private let data: Data
    private let spacing: CGFloat
    private let alignment: HorizontalAlignment
    private let content: (Data.Element) -> Content
    
    @State private var availableWidth: CGFloat = 0
    
    public init(data: Data, spacing: CGFloat = 8, alignment: HorizontalAlignment = .leading, content: @escaping (Data.Element) -> Content) {
        self.data = data
        self.spacing = spacing
        self.alignment = alignment
        self.content = content
    }

    public var body: some View {
        ZStack(alignment: Alignment(horizontal: alignment, vertical: .center)) {
            Color.clear.frame(height: 1).readSize { size in
                availableWidth = size.width
            }
            _FlexView(
                availableWidth: availableWidth,
                data: data,
                spacing: spacing,
                alignment: alignment,
                content: content
            )
        }
    }
}