//
//  TravelDetailView.swift
//  Chris Travels
//
//  Created by Renato Mateus on 04/02/21.
//

import SwiftUI

struct TravelDetailView: View {
    
    // MARK: Attribute
    
    var travelPackage: TravelPackage
    
    var fontColor = Color(red: 77.0/255.0, green: 77.0/255.0, blue: 77.0/255.0)
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: View
    
    var body: some View {
        GeometryReader { view in
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    ZStack(alignment: .top){
                        Image(self.travelPackage.images[0])
                            .resizable()
                            .frame(height: 200)
                        Button(action:{
                            self.presentationMode.wrappedValue.dismiss()
                        }){
                            Image("icone-voltar")
                                .resizable()
                                .renderingMode(Image.TemplateRenderingMode.original)
                                .frame(width:15, height:25, alignment: .leading)
                                .padding(.leading, 15)
                                .padding(.top, 15)
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }
                }
                VStack {
                    Text(self.travelPackage.title.uppercased())
                        .font(.custom("Avenir Black", size: 26))
                        .foregroundColor(self.fontColor)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                    
                    Text(self.travelPackage.description)
                        .font(.custom("Avenir", size: 16))
                        .foregroundColor(self.fontColor)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                    
                    
                    Spacer()
                        .frame(height:15)
                    
                    Text(self.travelPackage.details)
                        .font(.custom("Avenir Black", size: 16))
                        .foregroundColor(self.fontColor)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                    
                    Spacer()
                        .frame(height:15)
                    
                    HStack{
                        VStack{
                            Text("Period between: ")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(self.fontColor)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                            
                            Text(self.travelPackage.dateLimit)
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(self.fontColor)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                        }
                        
                        VStack{
                            Text("$ \(self.travelPackage.price)")
                                .font(.custom("Avenir Black", size: 25))
                                .foregroundColor(.orange)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                            
                            Text("No taxes")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(self.fontColor)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                        }
                    }
                    
                    Divider()
                    
                    VStack {
                        Text("Included: ")
                            .font(.custom("Avenir", size: 20))
                            .foregroundColor(self.fontColor)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                    }
                    
                    HStack {
                        VStack {
                            Image("icone-apartamento")
                            Text("Apartment")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(self.fontColor)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .center)
                        }
                        Spacer()
                            .frame(height: 20)
                        
                        VStack {
                            Image("icone-aviao")
                            Text("Airfare")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(self.fontColor)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .center)
                        }
                    }
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                    
                    Divider()
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TravelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TravelDetailView(travelPackage: packageTravels[0])
    }
}
