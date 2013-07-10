//
//  ViewController.m
//  UserDefaultsExample
//
//  Created by Virginia Armas on 7/9/13.
//  Copyright (c) 2013 Synergy-GB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self saveUserDefaults];
    [self getUserDefaults];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults dictionaryRepresentation];
    NSLog(@"dic = %@", dic);
}

- (void) saveUserDefaults {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"Juan" forKey:@"firstName"];
    [defaults setObject:@"Rodriguez" forKey:@"lastname"];
    [defaults synchronize];
    
}

- (void) getUserDefaults {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *name = [defaults objectForKey:@"firstName"];
    NSString *lname = [defaults objectForKey:@"lastname"];
    
    NSLog(@"Nombre = %@, Apellido = %@", name, lname);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
