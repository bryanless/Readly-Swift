//
//  LinearProgressIndicator.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import SwiftUI

struct LinearProgressIndicator: View {
  var title: String = ""
  @State var value: Double
  @State var total: Double

  init(value: Double, total: Double) {
    self.value = value
    self.total = total
  }

  init(_ title: String, value: Double, total: Double) {
    self.title = title
    self.value = value
    self.total = total
  }

  var body: some View {
    ProgressView(title, value: value, total: total)
      .progressViewStyle(.linear)
  }
}

struct LinearProgressIndicator_Previews: PreviewProvider {
  static var previews: some View {
    LinearProgressIndicator("2/7 days", value: 2, total: 7)
  }
}
