//
//  ContentView.swift
//  watchRecorder Watch App
//
//  Created by Gernot Doriat on 29.06.24.
//

import SwiftUI

struct ContentView: View {
    @State private var isRecording = false
    var body: some View {
        VStack {
            Button(action: {
                toggleRecording()
            }) {
                Text(isRecording ? "Stop Recording" : "Start Recording")
            }
            .background(Color.green) // Setzt die Hintergrundfarbe auf grün
            .foregroundColor(.black)
            .cornerRadius(30) // Optional: Fügt abgerundete Ecken hinzu
            
            .padding()
        }
        .padding()
    }
    
    func toggleRecording() {
        debugPrint("toggleRecording")
      
    }
}

#Preview {
    ContentView()
}
