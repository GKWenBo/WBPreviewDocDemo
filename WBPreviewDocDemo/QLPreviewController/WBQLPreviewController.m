//
//  WBQLPreviewController.m
//  WBPreviewDocDemo
//
//  Created by Mr_Lucky on 2018/11/6.
//  Copyright © 2018 wenbo. All rights reserved.
//

#import "WBQLPreviewController.h"

@interface WBQLPreviewController () <QLPreviewControllerDelegate,QLPreviewControllerDataSource>

@property (nonatomic, strong) QLPreviewController *qlPreviewController;

@end

@implementation WBQLPreviewController

// MARK:Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self handlePLPreviewDataSource];
}

// MARK:Private Method
- (void)handlePLPreviewDataSource {
//    NSString *path = self.fileURL.absoluteString;
//    NSString *fileName = [path lastPathComponent];
//    if ([self isFileExistAtDocumentPath:fileName]) {
//        [self presentViewController:self.qlPreviewController
//                           animated:YES
//                         completion:nil];
//    }else {
//        /*  < AFNetworking下载 > */
//    }
    
#warning 测试
    [self presentViewController:self.qlPreviewController
                       animated:YES
                     completion:nil];
}

- (BOOL)isFileExistAtDocumentPath:(NSString *)fileName {
    NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *filePath = [documentPath stringByAppendingPathComponent:fileName];
    return [[NSFileManager defaultManager] fileExistsAtPath:filePath];
}

// MARK:QLPreviewControllerDelegate,QLPreviewControllerDataSource
- (void)previewControllerDidDismiss:(QLPreviewController *)controller {
    
}

- (void)previewControllerWillDismiss:(QLPreviewController *)controller {
    
}

- (id<QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index {
    return self.fileURL;
}

- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller {
    return 1;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// MARK:Getter
- (QLPreviewController *)qlPreviewController {
    if (!_qlPreviewController) {
        _qlPreviewController = [[QLPreviewController alloc]init];
        _qlPreviewController.delegate = self;
        _qlPreviewController.dataSource = self;
    }
    return _qlPreviewController;
}

@end
