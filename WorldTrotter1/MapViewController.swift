//
//  MapViewController.swift
//  WorldTrotter1
//
//  Created by Rollin Francois on 3/19/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController {
    
    // MARK: Properties
    var mapView: MKMapView!
    
    
    
    // MARK: Actions
    override func loadView() {
        // create map view
        mapView = MKMapView()
    
        // Set it as *the* view of this view controller
        view = mapView
        
        // create segmented control
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        // create constraints
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8)
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view")
    }
    
}
