//
//  MPAdView+BDMExtension.h
//  BidMachineSample
//
//  Created by Ilia Lozhkin on 24.11.2021.
//  Copyright © 2021 Appodeal. All rights reserved.
//

#if __has_include(<MoPub/MoPub.h>)
    #import <MoPub/MoPub.h>
#elif __has_include(<MoPubSDK/MoPub.h>)
    #import <MoPubSDK/MoPub.h>
#else
    #import "MPAdView.h"
#endif

NS_ASSUME_NONNULL_BEGIN

@interface MPAdView (BDMExtension)

- (nullable MPImpressionData *)impressionData;

@end

NS_ASSUME_NONNULL_END
