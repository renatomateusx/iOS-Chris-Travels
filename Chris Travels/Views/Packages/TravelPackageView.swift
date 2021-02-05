//
//  TravelPackageView.swift
//  Chris Travels
//
//  Created by Renato Mateus on 04/02/21.
//

import SwiftUI

struct TravelPackageView: View {
    var package: TravelPackage
    var body: some View {
        GeometryReader  { view in
            VStack {
                Image(self.package.images.first ?? "")
                    .resizable()
                    .frame(height: 135)
                    .clipped()
                VStack {
                    Text(self.package.title)
                        .font(.custom("Avenir Black", size: 12))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    Text(self.package.description)
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    Text(self.package.dateLimit)
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    
                    Text("Just ")
                        .font(.custom("Avenir", size: 10))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    Text("$ \(self.package.price)")
                        .font(.custom("Avenir Black", size: 16))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                        .foregroundColor(.orange)
                    Text("No pay when cancel ")
                        .font(.custom("Avenir Black", size: 9))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                        .foregroundColor(.green)
                }
                .padding(.leading, 5)
                .padding(.trailing, 5)
                .padding(.bottom, 5)
                .padding(.top, -5)
            }
        }
        .frame(width: 180, height: 250)
        .shadow(radius: 5, x: 1, y: 1)
        .border(Color(red: 221.0/255.0, green: 221.0/255.0, blue: 221.0/255.0))
    }
}

struct TravelPackageView_Previews: PreviewProvider {
    static var previews: some View {
        TravelPackageView(package: packageTravels[0])
            .previewLayout(.fixed(width:180, height: 250))
    }
}
