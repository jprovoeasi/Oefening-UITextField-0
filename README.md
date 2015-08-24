# Oefening-UITextField-0

In deze oefening bootsen we het een login scherm na.

## Opgaves
1. Maak een nieuw project aan voor deze oefening.
2. Voeg in het storyboard een UITextField toe aan de reeds bestaande UIViewController.
  - Sleep een UITextField object naar de UIViewController in het storyboard.
  - Gebruik AutoLayout om het UITextField te positioneren.
  - Configureer de UIViewController als delegate van het UITextField. Vergeet niet aan te geven in de UIViewController dat deze controller het `UITextFieldDelegate` protocol implementeert.
  - Maak gebruik van de delegate methode `textFieldShouldReturn:` om het UITextField te resignen van de first responder status d.m.v. de methode `resignFirstResponder`.
  - Print een log (maak gebruik van `NSLog`) met de tekst van het UITextField in de delegate methode `textFieldDidEndEditing:`.
3. Voeg nu een tweede UITextField toe en configureer dit UITextField als een wachtwoord. Dit doe je vanuit het storyboard.
4. Voeg een UIButton toe. 
  - Wanneer je op deze UIButton klikt ga je - indien je correcte gegevens hebt ingevuld - naar een volgende scherm.
  - Indien de gegevens niet correct zijn, toon je een UIAlertView aan de gebruiker.
5. Luister naar de `UIKeyboardWillShowNotification`en `UIKeyboardWillHideNotification`. Gebruik `NSLog` om iets uit te printen wanneer je de notificaties ontvangt.
  - Subscribe je bij het `NSNotificationCenter` in de `viewDidLoad` lifecycle methode.
  - Unsubscribe je in de `dealloc` lifecycle methode.
