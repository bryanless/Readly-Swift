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
        date: Calendar.current.date(byAdding: .day, value: -1, to: Date.now)!,
        pageCount: 7,
        note: "apa ya"),
      SessionModel(
        id: 2,
        date: Date.now,
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
    sessionList: [
      SessionModel(
        id: 1,
        date: Calendar.current.date(byAdding: .day, value: -15, to: Date.now)!,
        pageCount: 5,
        note: "apa ya"),
      SessionModel(
        id: 2,
        date: Calendar.current.date(byAdding: .day, value: -14, to: Date.now)!,
        pageCount: 5,
        note: "bukan ini ya"),
      SessionModel(
        id: 3,
        date: Calendar.current.date(byAdding: .day, value: -13, to: Date.now)!,
        pageCount: 3,
        note: "bukan ini ya"),
      SessionModel(
        id: 4,
        date: Calendar.current.date(byAdding: .day, value: -12, to: Date.now)!,
        pageCount: 6,
        note: "bukan ini ya"),
      SessionModel(
        id: 5,
        date: Calendar.current.date(byAdding: .day, value: -11, to: Date.now)!,
        pageCount: 1,
        note: "bukan ini ya"),
      SessionModel(
        id: 6,
        date: Calendar.current.date(byAdding: .day, value: -10, to: Date.now)!,
        pageCount: 4,
        note: "bukan ini ya"),
      SessionModel(
        id: 7,
        date: Calendar.current.date(byAdding: .day, value: -9, to: Date.now)!,
        pageCount: 6,
        note: "bukan ini ya"),
      SessionModel(
        id: 2,
        date: Calendar.current.date(byAdding: .day, value: -8, to: Date.now)!,
        pageCount: 6,
        note: "bukan ini ya"),
      SessionModel(
        id: 8,
        date: Calendar.current.date(byAdding: .day, value: -7, to: Date.now)!,
        pageCount: 6,
        note: "bukan ini ya"),
      SessionModel(
        id: 9,
        date: Calendar.current.date(byAdding: .day, value: -6, to: Date.now)!,
        pageCount: 8,
        note: "bukan ini ya"),
      SessionModel(
        id: 10,
        date: Calendar.current.date(byAdding: .day, value: -5, to: Date.now)!,
        pageCount: 5,
        note: "bukan ini ya"),
      SessionModel(
        id: 11,
        date: Calendar.current.date(byAdding: .day, value: -4, to: Date.now)!,
        pageCount: 6,
        note: "bukan ini ya"),
      SessionModel(
        id: 12,
        date: Calendar.current.date(byAdding: .day, value: -3, to: Date.now)!,
        pageCount: 5,
        note: "bukan ini ya"),
      SessionModel(
        id: 13,
        date: Calendar.current.date(byAdding: .day, value: -2, to: Date.now)!,
        pageCount: 4,
        note: "bukan ini ya")
    ],
    isOngoing: false)
]
