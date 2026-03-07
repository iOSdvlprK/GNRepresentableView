//
//  ContentView.swift
//  GNRepresentableView
//
//  Created by joe on 3/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var value = ""
    
    var body: some View {
        VStack {
            Text(value)
            PracticeTextField(value: $value)
        }
    }
}

#Preview {
    ContentView()
}
