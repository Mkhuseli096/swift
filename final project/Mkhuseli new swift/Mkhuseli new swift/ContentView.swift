//
//  ContentView.swift
//  Mkhuseli new swift
//
//  Created by IACD Training 16 on 2024/05/10.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var selectedImage: Image? = nil
    @State private var text: String = ""

    var body: some View {
        NavigationView {
            VStack {
                if let selectedImage = selectedImage {
                    selectedImage
                        .resizable()
                        .scaledToFit()
                } else {
                    Image("mholi")
                        .resizable()
                        .scaledToFit()
                }
                Text("Mkhuseli \(name)")
                    .padding()
                TextField("Enter your name", text: $name)
                    .padding()
                NavigationLink(destination: TextView(text: $text)) {
                    Text("Next")
                }
                .padding()
            }
        }
    }
}

struct TextView: View {
    @Binding var text: String

    var body: some View {
        VStack {
            TextEditor(text: $text)
                .padding()
            Button(action: {
                // Code to save or share the text
            }) {
                Text("Save")
            }
            .padding()
        }
    }
}

