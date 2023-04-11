//
//  ChallengeAddProgressSheet.swift
//  Readly
//
//  Created by Bryan on 05/04/23.
//

import Combine
import SwiftUI

struct ChallengeAddProgressSheet: View {
  @State var pageCount: String = ""
  @State var note: String = ""
  @Binding var isPresented: Bool

  var body: some View {
    NavigationStack {
      Form {
        FormTextFieldRowItem(
          title: "Pages",
          placeholder: "5",
          value: $pageCount)
        .keyboardType(.numberPad)
        .onReceive(Just(pageCount)) { newValue in
          let filtered = newValue.filter { "0123456789".contains($0) }
          if filtered != newValue {
            self.pageCount = filtered
          }
        }
        Section("Note") {
          TextEditor(text: $note)
            .frame(minHeight: 240)
        }
      }
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
            Text("Add")
              .bold()
          }
        }
      }
      .navigationTitle("Add progress")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ChallengeAddProgressSheet_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeAddProgressSheet(isPresented: .constant(true))
  }
}
