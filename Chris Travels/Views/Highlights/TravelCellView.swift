//
//  TravelCellView.swift
//  Chris Travels
//
//  Created by Renato Mateus on 04/02/21.
//

import SwiftUI

struct TravelCellView: View {
    var travel: Travel
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        VStack(alignment: .leading){
            Text(travel.title)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(travel.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
                .clipped()
            HStack {
                Text(travel.daysQuantity)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(travel.price)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct TravelCellView_Previews: PreviewProvider {
    static var previews: some View {
        TravelCellView(travel: travels[0])
            .previewLayout(.fixed(width: 350, height: 200))    }
}
