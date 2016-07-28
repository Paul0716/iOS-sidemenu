//
//  MapViewController.swift
//  iOS-sidemenu
//
//  Created by Paul Ku on 2016/7/28.
//  Copyright © 2016年 Paul Ku. All rights reserved.
//

import UIKit
import Google_Material_Design_Icons_Swift
import GoogleMaps

class MapViewController: UIViewController {

    @IBOutlet weak var expandBarBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expandBarBtn.setGMDIcon(GMDType.GMDList, iconSize: 24)
        expandBarBtn.tintColor = UIColor.redColor()
        // Do any additional setup after loading the view.
        
        let camera = GMSCameraPosition.cameraWithLatitude(-33.86,
                                                          longitude: 151.20, zoom: 6)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func expandSideMenu(sender: AnyObject) {
        self.slideMenuController()?.openLeft()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
