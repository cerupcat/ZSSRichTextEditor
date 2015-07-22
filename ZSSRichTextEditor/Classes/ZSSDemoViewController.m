//
//  ZSSDemoViewController.m
//  ZSSRichTextEditor
//
//  Created by Nicholas Hubbard on 11/29/13.
//  Copyright (c) 2013 Zed Said Studio. All rights reserved.
//

#import "ZSSDemoViewController.h"
#import "ZSSDemoPickerViewController.h"

@interface ZSSDemoViewController ()

@property (nonatomic, strong) ZSSRichTextEditor *richText;

@end

@implementation ZSSDemoViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *holder = [[UIView alloc] initWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200)];
    [self.view addSubview:holder];
    
    self.title = @"Standard";
    
    // Export HTML
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Export" style:UIBarButtonItemStylePlain target:self action:@selector(exportHTML)];
	

    // HTML Content to set in the editor
    NSString *html = @"<!-- This is an HTML comment -->"
    "<p>This is a test of the <strong>ZSSRichTextEditor</strong> by <a title=\"Zed Said\" href=\"http://www.zedsaid.com\">Zed Said Studio</a></p>";
    
    self.richText = [[ZSSRichTextEditor alloc] initWithView:holder];
    self.richText.baseURL = [NSURL URLWithString:@"http://www.zedsaid.com"];
    self.richText.enabledToolbarItems = @[ZSSRichTextEditorToolbarBold, ZSSRichTextEditorToolbarItalic, ZSSRichTextEditorToolbarUnorderedList, ZSSRichTextEditorToolbarOrderedList, ZSSRichTextEditorToolbarQuickLink];
    [self.richText setHTML:html];
    
    self.richText.toolbarItemSelectedTintColor = [UIColor blueColor];
    self.richText.toolbarItemTintColor = [UIColor blackColor];
    
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)exportHTML {
    NSLog(@"%@", [self.richText getHTML]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
