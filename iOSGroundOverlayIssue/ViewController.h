//
//  ViewController.h
//  iOSGroundOverlayIssue
//
//  Created by Matt Shepherd on 1/13/17.
//  Copyright © 2017 Matt Shepherd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property (nonatomic, assign) IBOutlet MKMapView *mapView;

@end

