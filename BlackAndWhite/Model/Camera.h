//
//  Camera.h
//  BlackAndWhite
//
//  Created by Вячеслав Ембатуров on 07.10.14.
//  Copyright (c) 2014 Вячеслав Ембатуров. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface Camera : NSObject

@property (nonatomic, strong) AVCaptureVideoPreviewLayer *previewLayer;

- (void)setupCaptureSession;
- (void)startCamera;
- (void)stopCamera;

@end
