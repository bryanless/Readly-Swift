//
//  SessionModel.swift
//  Readly
//
//  Created by Bryan on 05/04/23.
//

import Foundation

struct SessionModel: Identifiable {
  let id: Int
  var date: Date
  var pageCount: Int
  var note: String
}
