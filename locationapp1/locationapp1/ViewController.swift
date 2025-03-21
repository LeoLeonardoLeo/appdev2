//
//  ViewController.swift
//  locationapp1
//
//  Created by Tech on 2025-03-04.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        checkAndStartLocations(locationManager)
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkAndStartLocations(manager)
    }
    
    func checkAndStartLocations(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .authorizedAlways:
            print("always authorized")
            locationManager.requestLocation()
        case .authorizedWhenInUse:
            print("when in use")
            locationManager.requestLocation()

        case .denied, .restricted:
            print("sorry denied")
        default:
            print("unknown")
            locationManager.requestAlwaysAuthorization()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
        let geoCoder = CLGeocoder()
        geoCoder.reverseGeocodeLocation(locations.first!) { (placemarks, error) in
            if let e = error {
                print(e)
                return
            }
            if let pm = placemarks {
                if pm.count > 0 {
                    let place = pm.first! as CLPlacemark
                    print(place.name)
                }
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
