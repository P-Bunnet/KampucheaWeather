//
//  ContentView.swift
//  KampucheaWeather
//
//  Created by Phoung Bunnet on 27/6/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?

    var body: some View {
        VStack {
            if let location = locationManager.location {
                if let weather = weather {
                    WeatherView(weather: weather)
                }
                else {
                    LoadingView()
                        .task {
                            do {
                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longtitude: location.longitude)
                            }
                            catch {
                                print("Error getting error \(error)")
                            }
                        }
                }
            } else {
                if locationManager.isLoading {
                    ProgressView()
                }
                else {
                    WelcomeView().environmentObject(locationManager)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "ffd5a6"))
        .preferredColorScheme(.light)
    }

 
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
