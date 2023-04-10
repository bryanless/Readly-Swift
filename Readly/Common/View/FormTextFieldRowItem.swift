//
//  FormTextFieldRowItem.swift
//  Readly
//
//  Created by Bryan on 10/04/23.
//

import SwiftUI

struct FormTextFieldRowItem: View {
  var title: String?
  var placeholder: String?
  @Binding var value: String
  var titleWidth: Double = 80

  var body: some View {
    HStack {
      if title != nil {
        HStack {
          Text(title!)
          Spacer()
        }
        .frame(width: titleWidth)
      }
      TextField(placeholder ?? "", text: $value)
    }
  }
}

struct FormTextFieldRowItem_Previews: PreviewProvider {
  static var previews: some View {
    FormTextFieldRowItem(
      title: "Name",
      placeholder: "Fresh Morning Challenge",
      value: .constant("Fresh Morning Challenge"))
  }
}
