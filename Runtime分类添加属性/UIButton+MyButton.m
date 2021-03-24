//
//  UIButton+MyButton.m
//  Runtime分类添加属性
//
//  Created by forwonder on 2020/12/16.
//

#import "UIButton+MyButton.h"
#import <objc/runtime.h>
static const char * MYVALUE = "MYVALUE";
@implementation UIButton (MyButton)

- (void)setMyValue:(NSInteger)myValue{
    //简书介绍地址:https://www.jianshu.com/p/d939ed2fc20f
    objc_setAssociatedObject(self, MYVALUE,@(myValue), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSInteger)myValue{
    
    return [objc_getAssociatedObject(self, MYVALUE) integerValue];
}

@end
