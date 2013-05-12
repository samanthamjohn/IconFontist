//
//  IFDocument.m
//  IconFontist
//
//  Created by Samantha John on 5/12/13.
//  Copyright (c) 2013 Sam & Han. All rights reserved.
//

#import "IFDocument.h"
@interface IFDocument()<NSOpenSavePanelDelegate>
@end
@implementation IFDocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"IFDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (IBAction)saveDocument:(id)sender
{
    NSLog(@"================> %@", @"hello");
}

- (IBAction)Pressbutton:(id)sender {

    NSOpenPanel *panel = [NSOpenPanel openPanel];

    panel.allowsMultipleSelection = NO;
    panel.canChooseDirectories = NO;
    panel.canChooseFiles = YES;
    panel.allowedFileTypes = @[@"svg", @"SVG"];
    
    if ( [panel runModal] == NSOKButton ){
        

//        NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:panel.URL];
//        NSLog(@"================> %@, %@", parser, [parser parse] ? @"YES" : @"NO");

        self.textCell.title = panel.URL.relativeString;
    }
    


}

@end
