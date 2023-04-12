//
//  EmojiPickerSheetView.swift
//  Readly
//
//  Created by Bryan on 10/04/23.
//

import EmojiPicker
import SwiftUI

struct EmojiPickerSheetView: View {
  @Binding var emoji: Emoji?

  var body: some View {
    NavigationStack {
      EmojiPickerView(selectedEmoji: $emoji)
    }
  }
}

struct EmojiPickerSheetView_Previews: PreviewProvider {
  static var previews: some View {
    EmojiPickerSheetView(emoji: .constant(Emoji(value: "😀", name: "")))
  }
}
