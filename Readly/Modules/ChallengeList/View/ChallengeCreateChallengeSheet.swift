//
//  ChallengeCreateChallengeSheet.swift
//  Readly
//
//  Created by Bryan on 10/04/23.
//

import Combine
import EmojiPicker
import SwiftUI

struct ChallengeCreateChallengeSheet: View {
  @State private var isEmojiPickerPresented: Bool = false

  @State var emoji: Emoji? = Emoji(value: "🔥", name: "")
  @State var name: String = ""
  @State var days: String = ""
  @Binding var isPresented: Bool

  var body: some View {
    NavigationStack {
      VStack(spacing: Space.none) {
        Button {
          isEmojiPickerPresented.toggle()
        } label: {
          Text(emoji!.value)
            .font(.system(size: 64))
        }
        .padding(.top, Space.extraLarge)

        Form {
          FormTextFieldRowItem(
            title: "Name",
            placeholder: "Fresh Morning Challenge",
            value: $name)
          FormTextFieldRowItem(
            title: "Days",
            placeholder: "7",
            value: $days)
          .keyboardType(.numberPad)
          .onReceive(Just(days)) { newValue in
            let filtered = newValue.filter { "0123456789".contains($0) }
            if filtered != newValue {
              self.days = filtered
            }
          }
        }

      }
      .background(Color(uiColor: UIColor.secondarySystemBackground))
      .toolbar {
        ToolbarItem(placement: .cancellationAction) {
          Button {
            isPresented.toggle()
          } label: {
            Text("Cancel")
          }
        }
        ToolbarItem(placement: .primaryAction) {
          Button {
            isPresented.toggle()
          } label: {
            Text("Create")
              .bold()
          }
        }
      }
      .navigationTitle("Create challenge")
      .navigationBarTitleDisplayMode(.inline)
      .sheet(isPresented: $isEmojiPickerPresented) {
        EmojiPickerSheetView(emoji: $emoji)
      }
    }
  }
}

struct ChallengeCreateChallengeSheet_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeCreateChallengeSheet(isPresented: .constant(true))
  }
}
