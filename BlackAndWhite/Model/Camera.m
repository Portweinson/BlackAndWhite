//
//  Camera.m
//  BlackAndWhite
//
//  Created by Вячеслав Ембатуров on 07.10.14.
//  Copyright (c) 2014 Вячеслав Ембатуров. All rights reserved.
//

#import "Camera.h"
#import "BAWCommonMacros.h"


@interface Camera () <AVCaptureMetadataOutputObjectsDelegate>

@property (nonatomic, strong) AVCaptureSession *session;
@property (nonatomic, strong) AVCaptureDevice *videoDevice;
@property (nonatomic, strong) AVCaptureDeviceInput *videoInput;

@end



@implementation Camera

- (void)setupCaptureSession
{
    if (! self.session) {
        self.videoDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
        if (!_videoDevice) {
            NSLog(@"No video camera on this device!");
            return;
        }
        self.session = [[AVCaptureSession alloc] init];
        self.videoInput = [[AVCaptureDeviceInput alloc] initWithDevice:self.videoDevice error:nil];
        
        if ([self.session canAddInput:self.videoInput]) {
            [self.session addInput:self.videoInput];
        }
        
        self.previewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:self.session];
        self.previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
        
        self.metadataOutput = [[AVCaptureMetadataOutput alloc] init];
        dispatch_queue_t metadataQueue = dispatch_queue_create("com.blackandwhiteapp.camera.metadataOutput", 0);
        [self.metadataOutput setMetadataObjectsDelegate:self
                                                  queue:metadataQueue];
        if ([self.session canAddOutput:self.metadataOutput]) {
            [self.session addOutput:self.metadataOutput];
        }
    }
}

@end
