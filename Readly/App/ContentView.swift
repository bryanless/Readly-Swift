//
//  ContentView.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import SwiftUI

struct ContentView: View {
  @State var selectedTab: ReadlyTab = .challenge

  var body: some View {
    TabView(selection: $selectedTab) {
      NavigationStack {
        ChallengeView()
      }
      .tabItem {
        Label("Challenge", systemImage: "target")
      }
      .tag(ReadlyTab.challenge)

      NavigationStack {
        SummaryView()
      }
      .tabItem {
        Label("Summary", systemImage: "chart.bar.xaxis")
      }
      .tag(ReadlyTab.summary)
    }
  }
}

enum ReadlyTab {
  case challenge, summary
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
