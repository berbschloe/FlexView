//
//  ContentViewModel.swift
//  FlexView
//
//  Created by Brandon Erbschloe on 5/7/21.
//

import SwiftUI

class ContentViewModel: ObservableObject {

  @Published var originalItems = [
    "Here’s", "to", "the", "crazy", "ones", "the", "misfits", "the", "rebels", "the", "troublemakers", "the", "round", "pegs", "in", "the", "square", "holes", "the", "ones", "who", "see", "things", "differently", "they’re", "not", "fond", "of", "rules", "You", "can", "quote", "them", "disagree", "with", "them", "glorify", "or", "vilify", "them", "but", "the", "only", "thing", "you", "can’t", "do", "is", "ignore", "them", "because", "they", "change", "things", "they", "push", "the", "human", "race", "forward", "and", "while", "some", "may", "see", "them", "as", "the", "crazy", "ones", "we", "see", "genius", "because", "the", "ones", "who", "are", "crazy", "enough", "to", "think", "that", "they", "can", "change", "the", "world", "are", "the", "ones", "who", "do"
  ]

  @Published var spacing: CGFloat = 8
  @Published var padding: CGFloat = 8
  @Published var wordCount: Int = 0
  @Published var alignmentIndex = 0

  var words: [String] {
    Array(originalItems.prefix(wordCount))
  }

  let alignments: [HorizontalAlignment] = [.leading, .center, .trailing]

  var alignment: HorizontalAlignment {
    alignments[alignmentIndex]
  }
}
