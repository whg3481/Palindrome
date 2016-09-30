//
//  ViewController.m
//  Palindrome
//
//  Created by New User on 9/29/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



-(IBAction)CheckPalindromeButton:(id)sender
{
    
    
    
    NSString *name = self.checkthisword.text.lowercaseString ;
    
    NSLog(@"%@",self.checkthisword.text);
    
    int len = [name length];
    NSMutableString *reverseName = [[NSMutableString alloc] initWithCapacity:len];
    
    for(int i=len-1;i>=0;i--)
    {
        char c = [name characterAtIndex:i];
        
        NSString *charAsString = [NSString stringWithFormat:@"%c",c];
        
        
        [reverseName appendString:charAsString];
        
      //  [reverseName appendFormat:[NSString stringWithFormat:@"%c",[name characterAtIndex:i]]];
        
    }
    
    NSLog(@"%@",reverseName);
    
    if([name isEqualToString :reverseName]) {
        
        self.PalindromeOutput.text = @"This is a Palindrome";
        
        
    }
    else
    {
        self.PalindromeOutput.text = @"This is NOT a Palindrome";
    }

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
