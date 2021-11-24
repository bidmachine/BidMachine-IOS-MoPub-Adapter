//
//  MPAdView+BDMExtension.m
//  BidMachineSample
//
//  Created by Ilia Lozhkin on 24.11.2021.
//  Copyright © 2021 Appodeal. All rights reserved.
//

#import "MPAdView+BDMExtension.h"

#if __has_include(<MoPub/MoPub.h>)
    #import <MoPub/MPBannerAdManager.h>
    #import <MoPub/MPAdConfiguration.h>
#elif __has_include(<MoPubSDK/MoPub.h>)
    #import <MoPubSDK/MPBannerAdManager.h>
    #import <MoPubSDK/MPAdConfiguration.h>
#else
    #import "MPBannerAdManager.h"
    #import "MPAdConfiguration.h"
#endif

@interface MPAdView (BDMInternalExtension)

@property (nonatomic, strong) MPBannerAdManager *adManager;

@end

@interface MPBannerAdManager (BDMInternalExtension)

@property (nonatomic, strong) MPAdConfiguration *requestingConfiguration;

@end

@implementation MPAdView (BDMExtension)

- (MPImpressionData *)impressionData {
    return [[[self adManager] requestingConfiguration] impressionData];
}

@end
