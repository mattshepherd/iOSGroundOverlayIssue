//
//  ViewController.m
//  iOSGroundOverlayIssue
//
//  Created by Matt Shepherd on 1/13/17.
//  Copyright © 2017 Matt Shepherd. All rights reserved.
//

#import "ViewController.h"
#import "MKImageOverlay.h"
#import "MKImageOverlayRenderer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addExampleGroundOverlay];
}


-(void)addExampleGroundOverlay{
    
    MKImageOverlay *o=[[MKImageOverlay alloc] init];
    
    NSString *image=@"latest.gif"; //image file in your project
    
    [o setImage:image];
    [o setRotation:0];
    [o setScale:0.75]; //this is not used, It doesn't seem to make a difference
    [o setNorth:50.4066263673010000 South:21.65253806 East:-66.51793788 West:-127.6203755238750000];
    
    [self.mapView addOverlay:o];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma Mark - MKOverlayRendererMethods

- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id <MKOverlay>)overlay
{
    MKImageOverlayRenderer *renderer = [[MKImageOverlayRenderer alloc] initWithOverlay:overlay];
    renderer.alpha = 0.5;
    return renderer;
}

@end
