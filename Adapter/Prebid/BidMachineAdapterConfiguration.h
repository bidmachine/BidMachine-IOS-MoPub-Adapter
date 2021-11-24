//
//  BidMachineAdapterConfiguration.h
//  BidMachineAdapterConfiguration
//
//  Created by Yaroslav Skachkov on 3/1/19.
//  Copyright © 2019 BidMachineAdapterConfiguration. All rights reserved.
//

#if __has_include(<MoPub/MoPub.h>)
    #import <MoPub/MoPub.h>
#elif __has_include(<MoPubSDK/MoPub.h>)
    #import <MoPubSDK/MoPub.h>
#else
    #import "MPBaseAdapterConfiguration.h"
#endif

@import BidMachine;
@import StackFoundation;
@import BidMachine.ExternalAdapterUtils;

NS_ASSUME_NONNULL_BEGIN

@interface BidMachineAdapterConfiguration : MPBaseAdapterConfiguration

@end

NS_ASSUME_NONNULL_END
