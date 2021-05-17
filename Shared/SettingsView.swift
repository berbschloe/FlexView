//
//  SettingsView.swift
//  FlexView
//
//  Created by Brandon Erbschloe on 5/7/21.
//

import SwiftUI

struct Settings: View {
    
    @ObservedObject var model: ContentViewModel
    
    let alignmentName: [String] = ["leading", "center", "trailing"]
    
    var body: some View {
        VStack {
            Stepper(value: $model.wordCount, in: 0...model.originalItems.count) {
                Text("\(model.wordCount) words")
            }

            HStack {
                Text("Padding")
                Slider(value: $model.padding, in: 0...60) { Text("") }
            }

            HStack {
                Text("Spacing")
                Slider(value: $model.spacing, in: 0...40) { Text("") }
            }

            HStack {
                Text("Alignment")
                Picker("Choose alignment", selection: $model.alignmentIndex) {
                    ForEach(0..<model.alignments.count) {
                        Text(alignmentName[$0])
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            HStack {
                Button("Shuffle") { model.originalItems.shuffle() }
            }
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.primary, lineWidth: 4))
        .padding()
    }
}
