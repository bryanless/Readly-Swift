//
//  RoutineProgressRowCardItem.swift
//  Readly
//
//  Created by Bryan on 10/04/23.
//

import EmojiPicker
import SwiftUI

struct BaseRowCardItem: View {
  var emoji: Emoji?
  var image: Image?
  var headline: Text
  var subheadline: Text?
  var value: Text
  var color: Color = .white
  var cornerRadius: CGFloat = RoundedShape.large

  var body: some View {
    HStack(alignment: .top, spacing: Space.medium) {
      if image != nil {
        image!
          .resizable()
          .aspectRatio(1, contentMode: .fit)
          .frame(width: 40)
      } else if emoji != nil {
        Text(emoji!.value)
          .font(.system(size: 40))
      }
      VStack(alignment: .leading, spacing: Space.medium) {
        VStack(alignment: .leading, spacing: Space.extraSmall) {
          headline
          subheadline
        }
        value
      }
      Spacer()
    }
    .padding(Space.large)
    .background(color)
    .cornerRadius(cornerRadius)
  }
}

struct BaseRowCardItem_Previews: PreviewProvider {
  static var previews: some View {
    BaseRowCardItem(
      emoji: Emoji(value: "😍", name: ""),
      headline: Text("Headline")
        .font(.headline),
      subheadline: Text("Subheadline")
        .font(.subheadline)
        .foregroundColor(.secondary),
      value: Text("Value"))
  }
}
