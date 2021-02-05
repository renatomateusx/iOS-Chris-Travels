//
//  MapView.swift
//  Chris Travels
//
//  Created by Renato Mateus on 04/02/21.
//

import SwiftUI
import MapKit

struct MyMapView: UIViewRepresentable {
    var coordinate : CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> some MKMapView {
        return MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MyMapView_Previews: PreviewProvider {
    static var previews: some View {
        MyMapView(coordinate: travels[0].location)
    }
}
