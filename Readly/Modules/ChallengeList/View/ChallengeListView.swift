//
//  ChallengeListView.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import SwiftUI

struct ChallengeListView<DetailDestination: View>: View {
  let detailDestination: ((_ challenge: ChallengeModel) -> DetailDestination)

  var body: some View {
    ScrollView(showsIndicators: false) {
      content
    }
    .padding(Space.large)
  }
}

extension ChallengeListView {
  var content: some View {
    LazyVStack(alignment: .leading, spacing: Space.extraLarge) {
      ongoingChallenge
      completedChallenge
    }
  }

  var ongoingChallenge: some View {
    LazyVStack(alignment: .leading, spacing: Space.small) {
      Text("Ongoing")
        .font(.headline)
      ForEach(challengeList) { challenge in
        if challenge.isOngoing {
          NavigationLink(destination: detailDestination(challenge)) {
            ChallengeRowCardItem(challenge: challenge)
          }.buttonStyle(.plain)
        }
      }
    }
  }

  var completedChallenge: some View {
    LazyVStack(alignment: .leading, spacing: Space.small) {
      Text("Completed")
        .font(.headline)
      ForEach(challengeList) { challenge in
        if !challenge.isOngoing {
          NavigationLink(destination: detailDestination(challenge)) {
            ChallengeRowCardItem(challenge: challenge)
          }.buttonStyle(.plain)
        }
      }
    }
  }
}

struct ChallengeView_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeListView<ChallengeDetailView>(detailDestination: { challenge in
      ChallengeDetailView(challenge: challenge) { day, session in
        SessionDetailView(day: day, session: session)
      }
    })
  }
}
