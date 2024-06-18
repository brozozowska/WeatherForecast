//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Сергей Розов on 18.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
        }
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return .blue
        } else {
            return .yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(.semibold)
            Text("Low: \(low)º")
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
