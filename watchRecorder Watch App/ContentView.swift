//
//  ContentView.swift
//  watchRecorder Watch App
//
//  Created by Gernot Doriat on 29.06.24.
//
import SwiftUI

struct ContentView: View {
    @State private var isRecording = false
    @State private var timer: DispatchWorkItem?
    
    var body: some View {
        VStack {
            Button(action: {
                toggleRecording()
            }) {
                Text(isRecording ? "Stop" : "Start")
                    .font(.title)
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Füllt den verfügbaren Platz aus
                    .padding() // Fügt Padding um den Text hinzu
                    .background(isRecording ? Color.red : Color.green) // Ändert die Hintergrundfarbe je nach Zustand
                    .foregroundColor(.black) // Setzt die Textfarbe auf weiß
                    .clipShape(Circle()) // Macht den Button rund
            }
            .padding() // Fügt Padding um den Button hinzu
        }
        .padding() // Fügt Padding um den VStack hinzu
    }
    
    func toggleRecording() {
        debugPrint("toggleRecording: isRecording = \(isRecording)")
        if isRecording {
            // Stop recording and cancel the timer
            isRecording = false
            timer?.cancel()
        } else {
            // Start recording and set a new timer
            isRecording = true
            let newTimer = DispatchWorkItem {
                isRecording = false
            }
            timer = newTimer
            DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: newTimer)
        }
    }
}

#Preview {
    ContentView()
}
