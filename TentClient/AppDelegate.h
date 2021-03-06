//
//  AppDelegate.h
//  TentClient
//
//  Created by Dustin Rue on 9/23/12.
//  Copyright (c) 2012 Dustin Rue. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CocoaTent.h"
#import "FollowingsWindowController.h"

@class CocoaTent;
@class CocoaTentApp;
@class FollowingsWindowController;

@interface AppDelegate : NSObject <NSApplicationDelegate,CocoaTentDelegate,NSTextFieldDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (strong) CocoaTent *cocoaTent;
@property (strong) CocoaTentApp *cocoaTentApp;
@property (strong) CocoaTentEntity *cocoaTentEntity;

// timeline
@property (weak) NSMutableArray *timelineData;
@property (strong) NSMutableArray *timelineMentions;
@property (strong) NSMutableArray *timelineFeed;
@property (strong) NSTimer *timelineDataRefreshTimer;
@property (strong) id timelineToDisplay;

@property (strong) NSArray *mentionList;
@property (strong) NSDictionary *replyingTo;

// will keep a list of entities keyed off of their entity URL
@property (strong) NSMutableDictionary *knownEntities;

// keeps a list of items being retrieved
@property (strong) NSMutableArray *retrievers;

// keeps a counter of the number of communication operations created
@property (assign) int operationCounter;

// Followings Window
@property (strong) FollowingsWindowController *followingsWindowController;
@property (strong) NSWindow *followsWindow;

// Followings data
@property (strong) NSArray *followingsData;
@property (strong) NSDictionary *followingsKeyedOnEntityURL;



@property (strong) id testing;

- (IBAction)saveTentEntityURL:(id)sender;
- (IBAction)doThing:(id)sender;
- (IBAction)registerWithTentServer:(id)sender;
- (IBAction)pushProfileInfo:(id)sender;
- (IBAction)newFollowing:(id)sender;
- (IBAction)getPosts:(id)sender;
- (IBAction)newPost:(id)sender;
- (IBAction)doReply:(id)sender;
- (IBAction)doRepost:(id)sender;
- (IBAction)cancelReply:(id)sender;
- (IBAction)showPreferences:(id)sender;
- (IBAction)showFollowingsWindow:(id)sender;
- (IBAction)showFollowersWindow:(id)sender;

@property (weak) IBOutlet NSButton *cancelReplyButton;
@property (weak) IBOutlet NSTextField *followEntityValue;
@property (weak) IBOutlet NSTextField *statusTextValue;
@property (weak) IBOutlet NSScrollView *timelineScrollView;
@property (weak) IBOutlet NSTextField *statusMessage;
@property (weak) IBOutlet NSCollectionView *timelineCollectionView;
@property (weak) IBOutlet NSTextField *statusMessageTimelineLabel;
@property (weak) IBOutlet NSTextField *tentEntityURLTextField;
@property (weak) IBOutlet NSTextFieldCell *statusTextValueTextFieldCell;
@property (weak) IBOutlet NSButton *registerAppButton;
@property (weak) IBOutlet NSButton *saveButton;
@property (weak) IBOutlet NSArrayController *timelineArrayController;
@property (unsafe_unretained) IBOutlet NSCollectionViewItem *timelineCollectionViewItem;
@property (unsafe_unretained) IBOutlet NSTextView *magicTest;
@property (weak) IBOutlet NSWindow *preferencesWindow;
- (IBAction)feedSelectorIBAction:(id)sender;




@property (weak) IBOutlet NSTextField *charsLeft;

//- (void) getAvatarForEntity:(NSString *) entity forTimelineObject:(id) timelineObject;
- (void) receivedProfileData:(NSNotification *) notification;
- (void) dataReceiveFailure:(NSNotification *) notification;
- (void) didCreateOperation:(NSNotification *) notification;

@end
