//
//  PontoDeInteresse.swift
//  Quoti
//
//  Created by Felipe Bandeira on 29/06/20.
//  Copyright © 2020 Apple Academy. All rights reserved.
//

import Foundation
import MapKit

class PontoDeInteresse: NSObject, MKAnnotation {
    
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        
        super.init()
    }
    
    
    
}
