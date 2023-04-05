//
//  ChallengeModel.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import Foundation

struct ChallengeModel: Identifiable {
  let id: Int
  let title: String
  var currentDayCount: Int
  let endDayCount: Int
  var pageCount: Int
  var dayPageCountList: [Int]
  var isOngoing: Bool
}

let challengeList = [
  ChallengeModel(
    id: 1,
    title: "Fresh Morning Challenge",
    currentDayCount: 2,
    endDayCount: 7,
    pageCount: 15,
    dayPageCountList: [7, 8],
    isOngoing: true),
  ChallengeModel(
    id: 2,
    title: "Night Time Challenge",
    currentDayCount: 0,
    endDayCount: 0,
    pageCount: 15,
    dayPageCountList: [7, 8],
    isOngoing: false)
]
