//
//  ViewController.m
//  Oefening-UITextField-0
//
//  Created by Jonathan Provo on 27/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (void)keyboardWillShow:(NSNotification *)notification;
- (void)keyboardWillHide;

@end

@implementation ViewController

#pragma mark - Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // subscribe to notifications
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide) name:UIKeyboardWillHideNotification object:nil];
}

// in dealloc it is NOT allowed to override the super method
- (void)dealloc
{
    // unsubscribe from notifications
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ([textField isEqual:self.usernameTextField]) {
        [self.passwordTextField becomeFirstResponder];
        
    } else if ([textField isEqual:self.passwordTextField]) {
        [self.passwordTextField resignFirstResponder];
        [self didSelectLoginButton:nil];
    }
    
    return YES;
}

#pragma mark - IBAction

- (IBAction)didSelectLoginButton:(UIButton *)button
{
    // this is a shortcut to resign any first responder
    // you could also call the method `resignFirstResponder` on all your UITextField objects
    // we resign first responder because else the keyboard is not animated away nicely ;-)
    [self.view endEditing:YES];
    
    if ([self.usernameTextField.text isEqualToString:@"admin"] && [self.passwordTextField.text isEqualToString:@"admin"]) {
        [self performSegueWithIdentifier:@"Success" sender:self];
        
    } else {
        NSString *title = @"Oops...";
        NSString *message = @"Incorrect username and password combination. Please try again...";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alertView show];
    }
}

#pragma mark - Private methods

// notice how we pass the NSNotification object from the notification by adding a ":" when subscribing for notifications
- (void)keyboardWillShow:(NSNotification *)notification
{
    NSLog(@"-- Keyboard will show");
}

// it is not required to pass the NSNotification object, as shown in this method
- (void)keyboardWillHide
{
    NSLog(@"-- Keyboard will hide");
}

@end
