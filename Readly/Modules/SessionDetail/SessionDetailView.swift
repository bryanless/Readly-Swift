//
//  SessionDetailView.swift
//  Readly
//
//  Created by Bryan on 05/04/23.
//

import SwiftUI

struct SessionDetailView: View {
  let day: Int
  @State var session: SessionModel

  var body: some View {
    ScrollView(showsIndicators: false) {
      content
    }
    .background(Color(uiColor: UIColor.secondarySystemBackground))
    .navigationTitle("Day \(day.description)")
    .navigationBarTitleDisplayMode(.large)
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
      BaseRowCardItem(
        image: Image(systemName: "book"),
        headline: "Page read",
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
        .cornerRadius(RoundedShape.small)
    }
    .frame(minHeight: 500)
  }
}

struct SessionDetailView_Previews: PreviewProvider {
  static var previews: some View {
    SessionDetailView(day: 1, session: challengeList.first!.sessionList.first!)
  }
}
