//
//  IFDocument.h
//  IconFontist
//
//  Created by Samantha John on 5/12/13.
//  Copyright (c) 2013 Sam & Han. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface IFDocument : NSPersistentDocument
@property (weak) IBOutlet NSButton *Hello;
- (IBAction)Pressbutton:(id)sender;
@property (weak) IBOutlet NSTextFieldCell *textCell;
@property (weak) IBOutlet NSView *label;

@end
