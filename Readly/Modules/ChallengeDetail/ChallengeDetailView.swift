//
//  ChallengeDetailView.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import SwiftUI

struct ChallengeDetailView: View {
  let challenge: ChallengeModel

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
    VStack(alignment: .leading, spacing: Space.large) {
      Text(challenge.title)
        .font(.largeTitle)
        .fontWeight(.bold)
      progress
      session
    }.padding(Space.medium)
  }

  var progress: some View {
    VStack(alignment: .leading, spacing: Space.medium) {
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
    VStack(alignment: .leading, spacing: Space.medium) {
      Text("Session")
        .font(.title3)
        .fontWeight(.bold)
      VStack(spacing: Space.none) {
        ForEach(Array(challenge.dayPageCountList.enumerated().reversed()), id: \.offset) { index, pageCount in
          SessionRowListItem(
            day: index + 1,
            pageCount: pageCount,
            isLastItem: index == 0)
        }
      }.cornerRadius(Shape.small)
    }
  }
}

struct ChallengeDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeDetailView(challenge: challengeList[1])
  }
}
