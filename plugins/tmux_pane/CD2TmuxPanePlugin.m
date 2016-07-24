//  CD2TmuxPanePlugin.h
//  tmux_pane
//
//  Created by Eric Christopherson on 11/17/14.
//  Based on original plugin:
//
//  CD2X11XTermPlugin.m
//  X11_xterm
//
//  Created by James Tuley on 2/18/07.
//  Copyright 2007 Jay Tuley. All rights reserved.
//

#import "CD2TmuxPanePlugin.h"


@implementation CD2TmuxPlugin

-(BOOL)openTermWindowForPath:(NSString*)aPath{
	@try{
		NSTask *task = [[NSTask alloc] init];
		[task setCurrentDirectoryPath:aPath];
		[task setLaunchPath:[[NSBundle bundleForClass:[self class]]
                             pathForResource:@"LaunchTmux"
                             ofType:@"sh"]];

		[task setStandardOutput:[NSFileHandle fileHandleWithStandardOutput]];	
		[task setStandardError:[NSFileHandle fileHandleWithStandardOutput]];

		[task setStandardError:[NSFileHandle fileHandleWithStandardOutput]];	
		[task launch];
		
	}
	@catch(id ex){
		return NO;
	}

	return YES;
}

@end
