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
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Füllt den verfügbaren Platz aus
                    .padding() // Fügt Padding um den Text hinzu
                    .background(isRecording ? Color.red : Color.green) // Ändert die Hintergrundfarbe je nach Zustand
                    .foregroundColor(.black) // Setzt die Textfarbe auf weiß
                    .cornerRadius(30) // Optional: Fügt abgerundete Ecken hinzu
            }
            .padding() // Fügt Padding um den Button hinzu
        }
        .padding() // Fügt Padding um den VStack hinzu
    }
    
    func toggleRecording() {
        debugPrint("toggleRecording")
        isRecording.toggle() // Schaltet den Aufzeichnungszustand um
        if isRecording {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                        isRecording = false
                    }
                }s
    }
}

#Preview {
    ContentView()
}
