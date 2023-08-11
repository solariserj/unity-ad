//
//  ContentView.swift
//  unityAds
//
//  Created by Alexandru on 11.08.2023.
//

import SwiftUI
import Combine

class ContentViewModel: ObservableObject {
    
    func showAds() {
        print("Show Ad")
    }
    
}

struct ContentView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    
    var body: some View {
        VStack(spacing: 50) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, world!")
            
            Button("Show Ad") {
                viewModel.showAds()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
