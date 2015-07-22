//
//  ZSSColorViewController.m
//  ZSSRichTextEditor
//
//  Created by Nicholas Hubbard on 8/12/14.
//  Copyright (c) 2014 Zed Said Studio. All rights reserved.
//

#import "ZSSColorViewController.h"

@interface ZSSColorViewController ()

@property (nonatomic, strong) ZSSRichTextEditor *richText;

@end

@implementation ZSSColorViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Colors";
    
    // HTML Content to set in the editor
    NSString *html = @"<p>This editor is using <strong>custom toolbar colors</strong>.</p>";
    
    self.richText = [[ZSSRichTextEditor alloc] initWithView:self.view];
    
    // Set the base URL if you would like to use relative links, such as to images.
    self.richText.baseURL = [NSURL URLWithString:@"http://www.zedsaid.com"];
    
    // Set the toolbar item color
    self.richText.toolbarItemTintColor = [UIColor redColor];
    
    // Set the toolbar selected color
    self.richText.toolbarItemSelectedTintColor = [UIColor blackColor];
    
    // Set the HTML contents of the editor
    [self.richText setHTML:html];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
