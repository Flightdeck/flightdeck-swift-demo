//
//  ContentView.swift
//  Flightdeck Demo
//
//  Created by Jasper van Nistelrooy on 12/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var showingConfirmation = false
    @State var tapCount: Int = 0
    
    var body: some View {
        ZStack() {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.indigo, .purple, .orange]), startPoint: .top, endPoint: .bottom))
               .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 40){
                
                Text("Flightdeck")
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Button("Track this button"){
                    print("Button tap tracked")
                    self.tapCount += 1
                    Flightdeck.shared.trackEvent("button-tap", properties: ["tap_count": self.tapCount])
                    self.showingConfirmation = true
                }
                    .padding(18)
                    .font(.system(size: 22))
                    .foregroundColor(.white)
                    .background(Color(red: 0.2, green: 0, blue: 0.6))
                    .clipShape(Capsule())
            }

        }
        .alert("Butten Tap Tracked", isPresented: $showingConfirmation) {
            Button("OK") { }
        } message: {
            Text("Butten taps tracked: \(self.tapCount)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
