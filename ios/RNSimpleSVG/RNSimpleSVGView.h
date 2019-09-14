
#import <React/RCTBridge.h>
#import <React/RCTImageSource.h>

@interface RNSimpleSVGView : UIView

- (instancetype)initWithBridge:(RCTBridge *)bridge NS_DESIGNATED_INITIALIZER;

@property (nonatomic, strong) RCTImageSource *source;

@end
