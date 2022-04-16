//
//  ViewController.swift
//  MapKitController
//
//  Created by Student G225 08 on 11/04/2022.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let distance: CLLocationDistance = 800
    let pitch: CGFloat = 400
    let heading = 45.0
    var camera: MKMapCamera?
    override func viewDidLoad() {
    super.viewDidLoad()
    mapView.mapType = .satelliteFlyover
    let coordinate = CLLocationCoordinate2DMake(51.107883, 17.038538)
    camera = MKMapCamera(lookingAtCenter: coordinate, fromDistance: distance, pitch: pitch, heading: heading)
    mapView.camera = camera! }
}

