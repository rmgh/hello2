//
//  ViewController.m
//  hello2
//
//  Created by minowaryohei on 2015/03/10.
//  Copyright (c) 2015年 rm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    messageLabel = [[UILabel alloc] init];
    messageLabel.frame = CGRectMake(30, 100, self.view.bounds.size.width - 60, self.view.bounds.size.height - 200);
    messageLabel.font = [UIFont systemFontOfSize: 20];
    messageLabel.text = @"春に向けて、お部屋をちょっとオシャレに変えたいあなた。ひとりでも簡単に使えるアイテムで、自分好みの空間作りを始めませんか。";
    messageLabel.numberOfLines = 0;
    messageLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [self.view addSubview:messageLabel];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"いいえ" forState:UIControlStateNormal];
    button.titleLabel.font =[UIFont systemFontOfSize: 20];
    button.frame = CGRectMake(0, 0, 100, 50);
    button.center = CGPointMake(self.view.center.x, 400);
    [button.layer setCornerRadius:10];
    [button.layer setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [button.layer setBorderWidth:2];
    [button addTarget:self action:@selector(onTapButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    secondMessage = @"もうすぐホワイトデー。義理、本命にかかわらず、相手が喜ぶお返しをしたいもの。女子の本音や人気のギフトを参考に、準備を進めよう。";
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"TSU82_sougen500.jpg"];
    imageView.bounds = CGRectMake(0, 0, 160, 160);
    imageView.center = CGPointMake(self.view.center.x, 110);
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.clipsToBounds = YES;
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onTapButton:(id)sender {
    NSString *str = secondMessage;
    secondMessage = [messageLabel text];
    [messageLabel setText: str];
}
@end
