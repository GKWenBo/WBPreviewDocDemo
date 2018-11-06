//
//  ViewController.m
//  WBPreviewDocDemo
//
//  Created by Mr_Lucky on 2018/11/6.
//  Copyright © 2018 wenbo. All rights reserved.
//

#import "ViewController.h"
#import "WBQLPreviewController.h"
#import "WBDocumentInteractionController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
            
        }
            break;
        case 1:
        {
            WBDocumentInteractionController *vc = [WBDocumentInteractionController new];
            NSString *path = [[NSBundle mainBundle] pathForAuxiliaryExecutable:@"实地考察接触点整理.xlsx"];
            vc.fileURL = [NSURL fileURLWithPath:path];
            [self.navigationController pushViewController:vc
                                                 animated:YES];
        }
            break;
            
        default:
        {
            WBQLPreviewController *vc = [WBQLPreviewController new];
            NSString *path = [[NSBundle mainBundle] pathForAuxiliaryExecutable:@"实地考察接触点整理.xlsx"];
            vc.fileURL = [NSURL fileURLWithPath:path];
            [self.navigationController pushViewController:vc
                                                 animated:YES];
        }
            break;
    }
}

@end
