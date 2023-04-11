//
//  SessionDetailView.swift
//  Readly
//
//  Created by Bryan on 05/04/23.
//

import SwiftUI

struct SessionDetailView: View {
  @FocusState private var isNoteFocused: Bool

  let day: Int
  @State var session: SessionModel

  var body: some View {
    ScrollView(showsIndicators: false) {
      content
    }
    .background(Color(uiColor: UIColor.secondarySystemBackground))
    .navigationTitle("Day \(day.description)")
    .navigationBarTitleDisplayMode(.large)
    .toolbar {
      if isNoteFocused {
        ToolbarItem(placement: .primaryAction) {
          Button {
            isNoteFocused.toggle()
          } label: {
            Text("Done")
              .bold()
          }
        }
      }
    }
    .onAppear {
      UITextView.appearance().textContainerInset =
      UIEdgeInsets(
        top: Space.medium,
        left: Space.medium,
        bottom: Space.medium,
        right: Space.medium)
    }
  }
}

extension SessionDetailView {
  var content: some View {
    VStack(spacing: Space.extraLarge) {
      header
      note
    }
    .padding(Space.large)
  }

  var header: some View {
    VStack(alignment: .leading, spacing: Space.large) {
      RoutineProgressRowCardItem(
        image: Image(systemName: "book"),
        headline: "Total page read",
        value: session.pageCount.description,
        cornerRadius: RoundedShape.small)
    }
  }

  var note: some View {
    VStack(alignment: .leading, spacing: Space.small) {
      Text("Note")
        .font(.title3)
        .bold()
        .padding(.horizontal, Space.large)

      TextEditor(text: $session.note)
        .focused($isNoteFocused)
        .cornerRadius(RoundedShape.small)
    }
    .frame(minHeight: 300)
  }
}

struct SessionDetailView_Previews: PreviewProvider {
  static var previews: some View {
    SessionDetailView(day: 1, session: challengeList.first!.sessionList.first!)
  }
}
