import @QuartzCore

    _loginForm.delegate = self
let usernameField :    EZFormTextField  =EZFormTextField.initWithKey(EZFDLoginFormUsernameKey)
    usernameField.inputMaxCharacters = 32
    usernameField.invalidIndicatorView  = 
    passwordField.inputMaxCharacters = 32
    passwordField.invalidIndicatorView  = 

    self.loginFormView.layer.cornerRadius = 10.0f
    self.loginFormView.layer.shadowOffset = CGSizeMake(0.0f, 3.0f)
    self.loginFormView.layer.shadowOpacity = 0.7f
self.invalidIndicatorKeyView.addSubview()


    }
    else {
	return (interfaceOrientation == UIInterfaceOrientationPortrait)
    }
}
//MARK  - Login button status

	self.loginButton.alpha = 1.0f
	self.invalidIndicatorKeyView.hidden = true;
    }
    else {
	self.loginButton.enabled = false;
	self.loginButton.alpha = 0.4f
	self.invalidIndicatorKeyView.hidden = false;
    }
}
//MARK  - EZFormDelegate methods

self.updateViewsForFormValidity()

}
//MARK  - Control actions

UIAlertView.show()
}