//
//  ContentView.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      NavigationStack {
        ChallengeListView<ChallengeDetailView>(detailDestination: { challenge in
          ChallengeDetailView(challenge: challenge)
        })
        .navigationTitle("Challenge")
      }
      .tabItem {
        Label("Challenge", systemImage: "target")
      }

      NavigationStack {
        SummaryView()
          .navigationTitle("Summary")
      }
      .tabItem {
        Label("Summary", systemImage: "chart.bar.xaxis")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
