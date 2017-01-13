
#import <MapKit/MapKit.h>

@interface MKImageOverlay : NSObject<MKOverlay>
@property NSString *image;
@property float scale;
@property float north;
@property float south;
@property float east;
@property float west;
@property float rotation;


-(void)setNorth:(float) n South:(float) s East:(float) e West:(float) w;



@end
