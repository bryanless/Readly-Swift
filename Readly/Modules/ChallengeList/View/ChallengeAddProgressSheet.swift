//
//  ChallengeAddProgressSheet.swift
//  Readly
//
//  Created by Bryan on 05/04/23.
//

import SwiftUI

struct ChallengeAddProgressSheet: View {
  @Binding var isPresented: Bool

  var body: some View {
    NavigationStack {
      Text("hohoho")
        .toolbar {
          ToolbarItem(placement: .navigationBarLeading) {
            Button {
              isPresented.toggle()
            } label: {
              Text("Cancel")
            }
          }
          ToolbarItem(placement: .navigationBarTrailing) {
            Button {
              isPresented.toggle()
            } label: {
              Text("Add")
            }
          }

        }
    }

  }
}

struct ChallengeAddProgressSheet_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeAddProgressSheet(isPresented: .constant(true))
  }
}
