//
//  WelcomeView.swift
//  KampucheaWeather
//
//  Created by Phoung Bunnet on 27/6/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locactionManager: LocationManager
    var body: some View {
        VStack{
            VStack(spacing:20 ) {
                Text("Welcome to the Kampuchea Weather").bold().font(.title)
                Text("Share your location to get started 😉")
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locactionManager.reqeustLocation()
            }
            .cornerRadius(30)
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .foregroundColor(.black)
            .tint(Color(hex: "fff6df"))
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
