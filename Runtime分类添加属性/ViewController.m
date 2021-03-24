//
//  ViewController.m
//  Runtime分类添加属性
//
//  Created by forwonder on 2020/12/16.
//

#import "ViewController.h"
#import "UIButton+MyButton.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myButton.myValue = 10;
}
- (IBAction)myBtnClick:(UIButton *)sender {
    NSLog(@"%ld",sender.myValue);
}


@end
