//
//  HighlightsView.swift
//  Chris Travels
//
//  Created by Renato Mateus on 04/02/21.
//

import SwiftUI

struct HighlightsView: View {
        @Environment(\.horizontalSizeClass) var horizontalSizeClass
        var body: some View {
            NavigationView {
                GeometryReader{ view in
                    VStack{
                        HeaderView()
                            .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                            .padding(.bottom, 30)
                        
                        List(travels) { travel in
                            NavigationLink(destination:MyMapView(coordinate:  travel.location).navigationBarTitle("Localização")){
                                TravelCellView(travel:travel)
                            }
                        }.navigationBarTitle("")
                    }
                }
                .edgesIgnoringSafeArea(.all)
            }.navigationViewStyle(StackNavigationViewStyle())
    
        }
}

struct HighlightsView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightsView()
    }
}
