//
//  PackageSectionView.swift
//  Chris Travels
//
//  Created by Renato Mateus on 04/02/21.
//

import SwiftUI

struct PackageSectionView: View {
    // MARK: Attributes
    
    var sectionName: String
    var packages: [TravelPackage]
    
    // MARK: VIEW
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.sectionName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(self.packages) {package in
                        NavigationLink(destination:
                                        TravelDetailView(travelPackage: package)
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                        ){
                            TravelPackageView(package: package)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            
        }
        .frame(height: 300)
        .background(Color(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0))
        
    }
}

struct PackageSectionView_Previews: PreviewProvider {
    static var previews: some View {
        PackageSectionView(sectionName: packageTravels[0].category.rawValue, packages: packageTravels)
            .previewLayout(.fixed(width: 600, height: 300))            
    }
}
