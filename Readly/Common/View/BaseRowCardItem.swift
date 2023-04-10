//
//  BaseRowCardItem.swift
//  Readly
//
//  Created by Bryan on 06/04/23.
//

import EmojiPicker
import SwiftUI

struct BaseRowCardItem: View {
  var emoji: Emoji?
  var image: Image?
  var headline: String
  var subheadline: String?
  var value: String
  var color: Color = .white
  var cornerRadius: CGFloat = RoundedShape.large

  var body: some View {
    VStack {
      HStack(spacing: Space.small) {
        if image != nil {
          image
        } else if emoji != nil {
          Text(emoji!.value)
            .font(.system(size: 40))
        }
        VStack(alignment: .leading, spacing: Space.extraSmall) {
          Text(headline)
          if subheadline != nil {
            Text(subheadline!)
              .font(.subheadline)
              .foregroundColor(.secondary)
          }
        }
        Spacer()
        Text(value)
          .font(.title3)
          .bold()
      }
    }
    .padding(Space.large)
    .background(color)
    .cornerRadius(cornerRadius)
  }
}

struct BaseRowCardItem_Previews: PreviewProvider {
  static var emoji = Emoji(value: "😀", name: "Smile")

  static var previews: some View {
    BaseRowCardItem(
      emoji: emoji,
      headline: "Page read",
      subheadline: "A subheadline",
      value: "7",
      color: .cyan)
  }
}
