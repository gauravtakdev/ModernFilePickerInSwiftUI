//
//  ContentView.swift
//  FilePickerInSwiftUI
//
//  Created by Gaurav Tak on 14/12/25.
//

import SwiftUI
import UniformTypeIdentifiers

struct ContentView: View {

    @State private var showPicker = false
    @State private var selectedFileURL: URL?

    var body: some View {
        VStack(spacing: 20) {

            Button("Pick a File") {
                showPicker = true
            }
            
            if let url = selectedFileURL {
                Text("Selected file:")
                    .font(.headline)

                Text(url.lastPathComponent)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .sheet(isPresented: $showPicker) {
            FilePicker(
                allowedTypes: [
                    .pdf,
                    .image,
                    .plainText,
                    .zip
                ],
                onPick: { url in
                    selectedFileURL = url
                    showPicker = false
                },
                onCancel: {
                    showPicker = false
                }
            )
        }
        .padding()
    }
}
