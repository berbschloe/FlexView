//
//  ContentView.swift
//  Shared
//
//  Created by Brandon Erbschloe on 5/7/21.
//

import SwiftUI
import FlexView

struct ContentView: View {
  @StateObject var model = ContentViewModel()

  var body: some View {
    ScrollView {
      FlexView(
        data: model.words,
        spacing: model.spacing,
        alignment: model.alignment
      ) { item in
        Text(verbatim: item)
          .padding(8)
          .background(
            RoundedRectangle(cornerRadius: 8)
              .fill(Color.gray.opacity(0.2))
          ).onTapGesture {
            
            model.originalItems.removeAll { $0 == item}
            model.wordCount -= 1
          }
      }
      .padding(.horizontal, model.padding)
    }
    .overlay(Settings(model: model), alignment: .bottom)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
