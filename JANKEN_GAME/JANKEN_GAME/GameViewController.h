//
//  GameViewController.h
//  JANKEN_GAME
//
//  Created by macbook on 2013/08/23.
//  Copyright (c) 2013年 macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
- (IBAction)jankenDidPush:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *guu;
@property (weak, nonatomic) IBOutlet UIImageView *choki;
@property (weak, nonatomic) IBOutlet UIImageView *paa;
@property (weak, nonatomic) IBOutlet UILabel *kati;
@property (weak, nonatomic) IBOutlet UILabel *make;
@property (weak, nonatomic) IBOutlet UILabel *aiko;
- (IBAction)backtotitleDidPush:(id)sender;

@end
