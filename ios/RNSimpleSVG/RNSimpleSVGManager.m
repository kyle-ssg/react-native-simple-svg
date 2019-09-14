// RNTMapManager.m
#import "RNSimpleSVGView.h"
#import "RNSimpleSVGManager.h"

@implementation RNSimpleSVGManager
RCT_EXPORT_MODULE()
- (UIView *)view
{
  return [[RNSimpleSVGView alloc] init];
}
RCT_EXPORT_VIEW_PROPERTY(source, RCTImageSource)
@end
