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
      HStack {
        Text("Day \(day)")
          .frame(width: 100, alignment: .leading)
        Text("\(pageCount.description) pages")
        Spacer()
        Image(systemName: "chevron.right")
          .foregroundColor(.secondary)
      }
      .padding(.horizontal, Space.medium)
      .padding(.vertical, Space.small)
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
