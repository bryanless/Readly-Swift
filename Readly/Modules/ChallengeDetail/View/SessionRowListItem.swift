//
//  SessionRowListItem.swift
//  Readly
//
//  Created by Bryan on 05/04/23.
//

import SwiftUI

struct SessionRowListItem: View {
  let day: Int
  let pageCount: Int
  var isLastItem: Bool = false

  var body: some View {
    VStack(spacing: Space.none) {
      HStack(spacing: Space.medium) {
        Text("Day \(day)")
          .frame(width: 80, alignment: .leading)
        Spacer()
        Text("\(pageCount.description) pages")
          .foregroundColor(.secondary)
        Image(systemName: "chevron.right")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 12)
          .foregroundColor(Color(UIColor.tertiaryLabel))
          .bold()
      }
      .padding(.horizontal, Space.large)
      .padding(.vertical, Space.medium)
      if !isLastItem {
        Divider()
      }
    }
    .background(.white)
  }
}

struct SessionRowListItem_Previews: PreviewProvider {
  static var previews: some View {
    SessionRowListItem(day: 1, pageCount: 7)
  }
}
