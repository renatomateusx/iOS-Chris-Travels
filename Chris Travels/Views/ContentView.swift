//
//  ContentView.swift
//  Chris Travels
//
//  Created by Renato Mateus on 02/02/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            HighlightsView()
                .tabItem{
                    Text("Highlights")
                    Image("icone-destaques")
                }
            PackageListView()
                .tabItem{
                    Text("Packages")
                    Image("icone-mala")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
