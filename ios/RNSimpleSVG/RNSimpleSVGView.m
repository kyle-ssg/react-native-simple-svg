#import "SVGKit.h"
#import <SVGKit/SVGKFastImageView.h>

#import <React/RCTNetworking.h>
#import <React/RCTShadowView.h>
#import <React/RCTUIManager.h>
#import <React/RCTUIManagerUtils.h>

#import <React/RCTBridge.h>
#import <React/RCTImageSource.h>


// INTERFACE
@interface RNSimpleSVGView : UIView

@property (nonatomic, strong) RCTImageSource *source;

@end

//DEFINITION
@implementation RNSimpleSVGView
{
  RCTBridge *_bridge;
  SVGKImage *_image;
  SVGKImageView *_imageView;
  RCTNetworkTask *_pendingImage;
}


- (instancetype)init
{
    self = [super init];
    _imageView = [[SVGKFastImageView alloc] initWithFrame:self.bounds];
    _imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:_imageView];
    return self;
}


// native XXXView.m
- (void)setSource:(RCTImageSource *)source
{
  SVGKImage *svgImage = [SVGKImage imageWithContentsOfURL:source.request.URL];
  [_imageView setImage:svgImage];
}

@end
