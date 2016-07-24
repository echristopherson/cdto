//  CD2TmuxPanePlugin.h
//  tmux_pane
//
//  Created by Eric Christopherson on 11/17/14.
//  Based on original plugin:
//
//  CD2X11Plugin.h
//  X11_xterm
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 Jay Tuley. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CD2PluginProtocolV1.h"

@interface CD2TmuxPlugin : NSObject <CD2PluginProtocolV1> {

}

-(BOOL)openTermWindowForPath:(NSString*)aPath;


@end
