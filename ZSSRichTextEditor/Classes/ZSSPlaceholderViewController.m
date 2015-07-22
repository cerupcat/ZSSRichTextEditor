//
//  ZSSPlaceholderViewController.m
//  ZSSRichTextEditor
//
//  Created by Nicholas Hubbard on 8/14/14.
//  Copyright (c) 2014 Zed Said Studio. All rights reserved.
//

#import "ZSSPlaceholderViewController.h"

@interface ZSSPlaceholderViewController ()

@property (nonatomic, strong) ZSSRichTextEditor *richText;

@end

@implementation ZSSPlaceholderViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Placeholder";
    
    self.richText = [[ZSSRichTextEditor alloc] initWithView:self.view];
    self.richText.placeholder = @"Please tap to start editing";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
