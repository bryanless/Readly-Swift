//
//  DailyRoutineModel.swift
//  Readly
//
//  Created by Bryan on 11/04/23.
//

import Foundation

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}

struct DailyRoutineModel: Identifiable {
  let id: Int
  var date: Date
  var pageCount: Int
}

let last7DaysRoutines = [
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 4, day: 12),
    pageCount: 8),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 4, day: 11),
    pageCount: 4),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 4, day: 10),
    pageCount: 5),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 4, day: 9),
    pageCount: 6),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 4, day: 8),
    pageCount: 2),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 4, day: 7),
    pageCount: 10),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 4, day: 6),
    pageCount: 8)
]

let monthlyRoutines = [
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 4),
    pageCount: 140),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 3),
    pageCount: 192),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 2),
    pageCount: 103),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2023, month: 1),
    pageCount: 142),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2022, month: 12),
    pageCount: 92),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2022, month: 11),
    pageCount: 96),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2022, month: 10),
    pageCount: 157),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2022, month: 9),
    pageCount: 173),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2022, month: 8),
    pageCount: 183),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2022, month: 7),
    pageCount: 140),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2022, month: 6),
    pageCount: 210),
  DailyRoutineModel(
    id: 1,
    date: date(year: 2022, month: 5),
    pageCount: 206)
]
