//
//  RoutineProgressChartView.swift
//  Readly
//
//  Created by Bryan on 11/04/23.
//

import Charts
import SwiftUI

struct RoutineProgressChartView: View {
  @State private var selectedPicker: RoutineProgressChartPicker = .week
  private var chartAreaColor: LinearGradient

  var chartColor: Color = .blue
  var chartHeight: CGFloat = 240

  init() {
    // Creating chart area color
    chartAreaColor = LinearGradient(
      gradient: Gradient(
        colors: [
          chartColor.opacity(0.25),
          chartColor.opacity(0.05)
        ]
      ),
      startPoint: .top,
      endPoint: .bottom
    )
  }

  var body: some View {
    VStack(spacing: Space.large) {
      header
      switch selectedPicker {
      case .week:
        Last7DaysChart(
          dailyRoutines: last7DaysRoutines,
          chartColor: chartColor,
          chartAreaColor: chartAreaColor,
          chartHeight: chartHeight)
      case .month:
        MonthlyChart(
          monthlyRoutines: monthlyRoutines,
          chartColor: chartColor,
          chartAreaColor: chartAreaColor,
          chartHeight: chartHeight)
      }
    }
  }
}

extension RoutineProgressChartView {
  var header: some View {
    VStack(alignment: .leading) {
      Text("Routine")
        .font(.title)
        .bold()
      Picker("View", selection: $selectedPicker) {
        Text("Last 7 days").tag(RoutineProgressChartPicker.week)
        Text("Last 12 Months").tag(RoutineProgressChartPicker.month)

      }.pickerStyle(.segmented)
    }
  }
}

struct Last7DaysChart: View {
  let dailyRoutines: [DailyRoutineModel]
  let chartColor: Color
  let chartAreaColor: LinearGradient
  let chartHeight: CGFloat

  var body: some View {
    Chart {
      ForEach(dailyRoutines) { dailyRoutine in
        LineMark(
          x: .value("Day", dailyRoutine.date, unit: .day),
          y: .value("Page Count", dailyRoutine.pageCount)
        )
        .symbol(.circle)
        .symbolSize(20)
        .interpolationMethod(.monotone)
        .foregroundStyle(chartColor)

        AreaMark(
          x: .value("Day", dailyRoutine.date, unit: .day),
          y: .value("Page Count", dailyRoutine.pageCount)
        )
        .interpolationMethod(.monotone)
        .foregroundStyle(chartAreaColor)
      }
    }
      .chartXAxis {
        AxisMarks(values: .stride(by: .day)) { _ in
          AxisGridLine()
          AxisTick()
          AxisValueLabel(format: .dateTime.day(.defaultDigits), centered: true)
        }
      }
      .chartYAxisLabel("Pages", spacing: Space.medium)
      .frame(height: chartHeight)
  }
}

struct MonthlyChart: View {
  let monthlyRoutines: [DailyRoutineModel]
  let chartColor: Color
  let chartAreaColor: LinearGradient
  let chartHeight: CGFloat

  var body: some View {
    Chart {
      ForEach(monthlyRoutines) { monthlyRoutine in
        LineMark(
          x: .value("Month", monthlyRoutine.date, unit: .month),
          y: .value("Page Count", monthlyRoutine.pageCount)
        )
        .symbol(.circle)
        .symbolSize(20)
        .interpolationMethod(.monotone)
        .foregroundStyle(chartColor)

        AreaMark(
          x: .value("Month", monthlyRoutine.date, unit: .month),
          y: .value("Page Count", monthlyRoutine.pageCount)
        )
        .interpolationMethod(.monotone)
        .foregroundStyle(chartAreaColor)
      }
    }
    .chartXAxis {
      AxisMarks(values: .stride(by: .month)) { _ in
          AxisGridLine()
          AxisTick()
        AxisValueLabel(format: .dateTime.month(.abbreviated), centered: true)
      }
    }
    .chartYAxisLabel("Pages", spacing: Space.medium)
    .frame(height: chartHeight)
  }
}

enum RoutineProgressChartPicker {
  case week, month
}

struct RoutineProgressChartView_Previews: PreviewProvider {
  static var previews: some View {
    RoutineProgressChartView()
  }
}
