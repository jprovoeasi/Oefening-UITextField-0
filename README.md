# Exercise-UITextField-0

In this exercise you will copycat the behaviour of a login screen.

## Tips
1. In case the keyboard does not show up on the simulator the shortcut ⌘+K can be used.

## Tasks
1. Create a new project for this exercise.
2. There is already a UIViewController in the storyboard, add a UITextField to is.
  - Use AutoLayout to position the UITextField.
  - Configure the UIViewController as a delegate of the UITextField. Don't forget that the UIViewController should indicate it conforms to the `UITextFieldDelegate` protocol.
  - Use the delegate method `textFieldShouldReturn:` to resign the UITextField of the first responder status by using the method `resignFirstResponder`.
  - Print a log (use method `NSLog`) containg the text of the UITextField in the delegate method `textFieldDidEndEditing:`.
3. Add a second UITextField and configure this UITextField as a password. This can be done from storyboard.
4. Add a UIButton that will server as the login button.
  - When this button is clicked, you should proceed to the next screen in case the credentials are correct.
  - In case the credentials are not correct, a UIAlertView should be displayed to the user.
5. Listen to the `UIKeyboardWillShowNotification` and `UIKeyboardWillHideNotification`. Use `NSLog` to print anything upon receiving the notifications.
  - Subscribe at the `NSNotificationCenter` in the `viewDidLoad` lifecycle methode.
  - Unsubscribe in the `dealloc` lifecycle methode.

## Solutions
The solutions are available in the **oplossing** branch of this repository.
