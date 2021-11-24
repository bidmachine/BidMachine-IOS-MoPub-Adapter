//
//  MPInterstitialAdController+BDMExtension.m
//  BidMachineSample
//
//  Created by Ilia Lozhkin on 23.11.2021.
//  Copyright © 2021 Appodeal. All rights reserved.
//

#import "MPInterstitialAdController+BDMExtension.h"

#if __has_include(<MoPub/MoPub.h>)
    #import <MoPub/MPInterstitialAdManager.h>
    #import <MoPub/MPAdConfiguration.h>
#elif __has_include(<MoPubSDK/MoPub.h>)
    #import <MoPubSDK/MPInterstitialAdManager.h>
    #import <MoPubSDK/MPAdConfiguration.h>
#else
    #import "MPInterstitialAdManager.h"
    #import "MPAdConfiguration.h"
#endif

@interface MPInterstitialAdController (BDMInternalExtension)

@property (nonatomic, strong) MPInterstitialAdManager *manager;

@end

@interface MPInterstitialAdManager (BDMInternalExtension)

@property (nonatomic, strong) MPAdConfiguration *requestingConfiguration;

@end

@implementation MPInterstitialAdController (BDMExtension)

- (MPImpressionData *)impressionData {
    return [[[self manager] requestingConfiguration] impressionData];
}

@end
