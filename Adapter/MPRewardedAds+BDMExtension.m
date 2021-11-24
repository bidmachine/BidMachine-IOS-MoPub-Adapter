//
//  MPRewardedAds+BDMExtension.m
//  BidMachineSample
//
//  Created by Ilia Lozhkin on 24.11.2021.
//  Copyright © 2021 Appodeal. All rights reserved.
//

#import "MPRewardedAds+BDMExtension.h"

#if __has_include(<MoPub/MoPub.h>)
    #import <MoPub/MPRewardedAdManager.h>
    #import <MoPub/MPAdConfiguration.h>
#elif __has_include(<MoPubSDK/MoPub.h>)
    #import <MoPubSDK/MPRewardedAdManager.h>
    #import <MoPubSDK/MPAdConfiguration.h>
#else
    #import "MPRewardedAdManager.h"
    #import "MPAdConfiguration.h"
#endif


@interface MPRewardedAds (BDMInternalExtension)

+ (MPRewardedAds *)sharedInstance;

@property (nonatomic, strong) NSMutableDictionary *rewardedAdManagers;

@end

@interface MPRewardedAdManager (BDMInternalExtension)

@property (nonatomic, strong) MPAdConfiguration *configuration;

@end

@implementation MPRewardedAds (BDMExtension)

+ (MPImpressionData *)impressionDataForAdUnitID:(NSString *)adUnitID {
    MPRewardedAds *sharedInstance = [[self class] sharedInstance];
    MPRewardedAdManager *adManager = sharedInstance.rewardedAdManagers[adUnitID];
    return [[adManager configuration] impressionData];
}

@end
