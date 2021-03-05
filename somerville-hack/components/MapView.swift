//
//  MapView.swift
//  somerville-hack
//
//  Created by Alasdair West on 04/03/2021.
//

import SwiftUI
import MapKit

struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}

struct MapView: View {
    var lat: Double
    var lng: Double
    var pinLat: Double
    var pinLng: Double
    
    @State private var region = MKCoordinateRegion()
    @State private var pin = MKPointAnnotation()
    

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: [
            MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: pinLat, longitude: pinLng)),
        ]) {item in
            MapPin(coordinate: item.coordinate) }
            .onAppear {
                setRegion(CLLocationCoordinate2D(latitude: lat, longitude: lng))
            }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        )
    }
    
    private func setPin(_ coordinate: CLLocationCoordinate2D) {
        pin = MKPointAnnotation(__coordinate: coordinate)
        pin.title = "London"
        pin.subtitle = "Home to the 2012 Summer Olympics."
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(lat: 55.9535, lng: -3.1917, pinLat: 55.9536, pinLng: -3.1942)
    }
}
