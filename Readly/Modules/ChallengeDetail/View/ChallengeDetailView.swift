//
//  ChallengeDetailView.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import SwiftUI

struct ChallengeDetailView<SessionDestination: View>: View {
  let challenge: ChallengeModel

  let sessionDetailDestination: (
    (_ day: Int,
     _ session: SessionModel) -> SessionDestination)

  var body: some View {
    ScrollView(showsIndicators: false) {
      content
    }
    .background(Color(uiColor: UIColor.secondarySystemBackground))
    .navigationBarTitleDisplayMode(.inline)
  }
}

extension ChallengeDetailView {
  var content: some View {
    VStack(alignment: .leading, spacing: Space.extraLarge) {
      Text(challenge.title)
        .font(.largeTitle)
        .fontWeight(.bold)
      progress
      session
    }.padding(Space.large)
  }

  var progress: some View {
    VStack(alignment: .leading, spacing: Space.large) {
      Text("Progress")
        .font(.title3)
        .fontWeight(.bold)
      LinearProgressIndicator(
        "\(challenge.currentDayCount)/\(challenge.endDayCount) days",
        value: Double(challenge.currentDayCount),
        total: Double(challenge.endDayCount))
    }
  }

  var session: some View {
    VStack(alignment: .leading, spacing: Space.large) {
      Text("Session")
        .font(.title3)
        .fontWeight(.bold)
      VStack(spacing: Space.none) {
        ForEach(Array(challenge.sessionList.enumerated().reversed()), id: \.offset) { index, session in
          NavigationLink(destination: sessionDetailDestination(index + 1, session)) {
            SessionRowListItem(
              day: index + 1,
              pageCount: session.pageCount,
              isLastItem: index == 0)
          }.buttonStyle(.plain)
        }
      }.cornerRadius(RoundedShape.small)
    }
  }
}

struct ChallengeDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeDetailView(challenge: challengeList.first!) { day, session  in
      SessionDetailView(day: day, session: session)
    }
  }
}
