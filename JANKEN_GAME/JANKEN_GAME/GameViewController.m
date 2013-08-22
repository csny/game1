//
//  GameViewController.m
//  JANKEN_GAME
//
//  Created by macbook on 2013/08/23.
//  Copyright (c) 2013年 macbook. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jankenDidPush:(id)sender {
    
    //再試合のために、最初にhidden設定
    self.guu.hidden = YES;
    self.choki.hidden = YES;
    self.paa.hidden = YES;
    self.kati.hidden = YES;
    self.make.hidden = YES;
    self.aiko.hidden = YES;
    
    
    //ボタンが押されたら相手の手を作る
    //aite_no_te に0から2の数字が入る
    int aite_no_te = arc4random()%3;
    
    //相手の手を表示
    if (aite_no_te == 0)
    {
        self.guu.hidden = NO;
    }
    else if (aite_no_te == 1)
    {
        self.choki.hidden = NO;
    }
    else if (aite_no_te == 2)
    {
        self.paa.hidden = NO;
    }
    
    //自分の手をボタンtagから判別
    //0:グー,1:チョキ,2:パー
    int jibun_no_te = [sender tag];
    
    if (aite_no_te == jibun_no_te)
    {
        self.aiko.hidden = NO; //同じ手なので「あいこ」を表示
    }
    else if (aite_no_te==0 && jibun_no_te==2)
    {
        self.kati.hidden = NO; //相手がグー、自分がパーなら「勝ち」を表示
    }
    else if (aite_no_te==1 && jibun_no_te==0)
    {
        self.kati.hidden = NO; //相手がチョキ、自分がグーなら「勝ち」を表示
    }
    else if (aite_no_te==2 && jibun_no_te==1)
    {
        self.kati.hidden = NO; //相手がパー、自分がチョキなら「勝ち」を表示
    }else
    {
        self.make.hidden = NO; //それ以外の組み合わせは「負け」を表示
    }
}
- (IBAction)backtotitleDidPush:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
