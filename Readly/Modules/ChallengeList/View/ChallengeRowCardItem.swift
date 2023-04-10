//
//  ChallengeRowCardItem.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import SwiftUI

struct ChallengeRowCardItem: View {
  let challenge: ChallengeModel
  @State var isSheetPresented: Bool = false

  var body: some View {
    VStack(spacing: Space.small) {
      content
    }
    .background(.white)
    .overlay(
      RoundedRectangle(cornerRadius: RoundedShape.medium)
        .stroke(.gray, lineWidth: 1)
    )
  }
}

extension ChallengeRowCardItem {
  var content: some View {
    VStack(alignment: .leading, spacing: Space.large) {
      Text(challenge.title)
        .font(.body)
        .lineLimit(2, reservesSpace: true)
      HStack(alignment: .bottom) {
        information
        Spacer()
        if challenge.isOngoing {
          Button("Add progress") {
            isSheetPresented.toggle()
          }
          .buttonStyle(.borderedProminent)
          .sheet(isPresented: $isSheetPresented) {
            ChallengeAddProgressSheet(isPresented: $isSheetPresented)
          }
        }
      }
    }
    .padding(Space.large)
  }

  var information: some View {
    VStack(alignment: .leading) {
      if challenge.isOngoing {
        Text("\(challenge.currentDayCount)/\(challenge.endDayCount) days")
          .font(.caption)
          .foregroundColor(.secondary)
      } else {
        Text("\(challenge.endDayCount) days")
          .font(.caption)
          .foregroundColor(.secondary)
      }
      Text("\(challenge.pageCount) pages")
        .font(.caption)
        .foregroundColor(.secondary)
    }
  }

}

struct ChallengeRowCardItem_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeRowCardItem(challenge: challengeList.first!)
  }
}
