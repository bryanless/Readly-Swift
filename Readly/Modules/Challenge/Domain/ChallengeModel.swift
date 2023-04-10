//
//  ChallengeModel.swift
//  Readly
//
//  Created by Bryan on 04/04/23.
//

import EmojiPicker
import Foundation

struct ChallengeModel: Identifiable {
  let id: Int
  var emoji: Emoji?
  let title: String
  var currentDayCount: Int
  let endDayCount: Int
  var pageCount: Int
  var sessionList: [SessionModel]
  var isOngoing: Bool
}

let challengeList = [
  ChallengeModel(
    id: 1,
    emoji: Emoji(value: "☀️", name: ""),
    title: "Fresh Morning Challenge",
    currentDayCount: 2,
    endDayCount: 7,
    pageCount: 15,
    sessionList: [
      SessionModel(
        id: 1,
        pageCount: 7,
        note: "apa ya"),
      SessionModel(
        id: 2,
        pageCount: 8,
        note: "bukan ini ya")
    ],
    isOngoing: true),
  ChallengeModel(
    id: 2,
    emoji: Emoji(value: "🌙", name: ""),
    title: "Night Time Challenge",
    currentDayCount: 14,
    endDayCount: 14,
    pageCount: 70,
//    dayPageCountList: [5, 5, 3, 6, 1, 4, 6, 6, 6, 8, 5, 6, 5, 4],
    sessionList: [
      SessionModel(
        id: 1,
        pageCount: 7,
        note: "apa ya"),
      SessionModel(
        id: 2,
        pageCount: 8,
        note: "bukan ini ya")
    ],
    isOngoing: false)
]
