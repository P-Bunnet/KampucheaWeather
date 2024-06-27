//
//  WeatherRow.swift
//  KampucheaWeather
//
//  Created by Phoung Bunnet on 27/6/24.
//

import SwiftUI

struct WeatherRow: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: logo)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(width: 20, height: 20)
                .padding()
                .background(Color(hue: 1.0, saturation:0.0, brightness: 0.888))
                .cornerRadius(50)
        }
        
        VStack(alignment: .leading, spacing: 8) {
            Text(name)
                .font(.caption)
            Text(value)
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}


struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(logo: "thermometer", name: "Feels like", value: "8°")
    }
}
