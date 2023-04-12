//
//  SummaryView.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import EmojiPicker
import SwiftUI

struct SummaryView: View {
  var body: some View {
    ScrollView(showsIndicators: false) {
      content
    }
  }
}

extension SummaryView {
  var content: some View {
    VStack(spacing: Space.extraLarge) {
      routine
      RoutineProgressChartView()
    }.padding(Space.large)
  }

  var routine: some View {
    VStack(spacing: Space.small) {
      routineStatus
      routineTips
    }
  }

  var routineStatus: some View {
    RoutineStatusRowCardItem(
      emoji: Emoji(value: "🤩", name: ""),
      headline: "Great, you are improving!",
      value: "You read about **6 pages daily** in the last 7 days",
      containerColor: Color("BlizzardBlueColor"))
  }

  var routineTips: some View {
    RoutineStatusRowCardItem(
      emoji: Emoji(value: "🔥", name: ""),
      headline: "Keep it up!",
      value: "Let’s try to improve your daily reading to **10 pages** to reach your average daily reading",
      containerColor: Color("PaleVioletColor"))
  }
}

struct SummaryView_Previews: PreviewProvider {
  static var previews: some View {
    SummaryView()
  }
}
