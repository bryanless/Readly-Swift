//
//  RoutineStatusRowCardItem.swift
//  Readly
//
//  Created by Bryan on 10/04/23.
//

import EmojiPicker
import SwiftUI

struct RoutineStatusRowCardItem: View {
  let emoji: Emoji
  let headline: String
  var subheadline: String?
  let value: String
  var contentColor: Color = .black
  var containerColor: Color = .white
  var cornerRadius: CGFloat = RoundedShape.medium

  var body: some View {
    BaseRowCardItem(
      emoji: emoji,
      headline: Text(.init(headline))
        .font(.title3)
        .bold()
        .foregroundColor(contentColor),
      subheadline: subheadline == nil ? nil : Text(.init(subheadline!))
        .font(.subheadline)
        .foregroundColor(contentColor),
      value: Text(.init(value))
        .foregroundColor(contentColor),
    color: containerColor,
    cornerRadius: cornerRadius)
  }
}

struct RoutineStatusRowCardItem_Previews: PreviewProvider {
  static var previews: some View {
    RoutineStatusRowCardItem(
      emoji: Emoji(value: "🥳", name: ""),
      headline: "You are on the right track!",
      subheadline: "Subheadline",
      value: "You read about **7.5 pages each day** which is about the **average** of most people",
      contentColor: .white,
      containerColor: .blue)
  }
}
