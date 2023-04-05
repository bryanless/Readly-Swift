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
    }.navigationBarTitleDisplayMode(.inline)
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
    VStack(alignment: .leading) {
      Text("Progress")
        .font(.headline)
      LinearProgressIndicator(
        "\(challenge.currentDayCount)/\(challenge.endDayCount) days",
        value: Double(challenge.currentDayCount),
        total: Double(challenge.endDayCount))
    }
  }

  var session: some View {
    VStack(alignment: .leading, spacing: Space.small) {
      ForEach(challenge.dayPageCountList, id: \.self) { pageCount in
        Text("Day \(pageCount.description)")
      }
    }
  }
}

struct ChallengeDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeDetailView(challenge: challengeList.first!)
  }
}
