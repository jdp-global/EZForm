//MARK  - EZFormTextField class extension
//MARK  - EZFormTextField implementation
class EZFormTextField {
inputFilter.copy()self.inputFilterBlocks.addObject()


}
//MARK  - Wire up user controls

self.wireUpUserControl()

self.wireUpUserControl()

self.wireUpUserControl()

    textField.delegate = self


    textView.delegate = self
}


UITextView.class()self.userControl.isKindOfClass()
EZFormInputControl.class()self.userControl.isKindOfClass()
    if (nil  = 
	self.userControl.inputAccessoryView  = form.inputAccessoryView()
}
//MARK  - Unwire user controls


}

    if (textView.delegate == self) textView.delegate = nil
}

UITextView.class()self.userControl.isKindOfClass()
	self.userControl.inputAccessoryView = nil
    }
    self.userControl = nil
}
//MARK  - Text field control events



form.formFieldInputFinished(self)

form.formFieldInputDidEnd(self)
//MARK  - Input control events

form.formFieldDidBeginEditing(self)

form.formFieldInputFinished(self)

form.formFieldInputDidEnd(self)
//MARK  - Is input valid

    }
	if (!filterBlock(inputStr)) {
	    return false;
	}
    }
    if (inputFilterFn) {
	if (!inputFilterFn(inputStr)) {
	    return false;
	}
    }
    return true;
}
//MARK  - Invalid indicator view

(UITextField.*)self.userControl(viewMode)
    else if (_invalidIndicatorPosition == EZFormTextFieldInvalidIndicatorPositionLeft) {
(UITextField.*)self.userControl(viewMode)
}

	    else {

	}
    }
}

self.updateValidityIndicators()


	}
	resultingString  = NSCharacterSet.whitespaceAndNewlineCharacterSet()resultingString.stringByTrimmingCharactersInSet()
    return result
}
//MARK  - EZFormFieldConcrete methods

    }
    return result
}

//MARK  - UITextFieldDelegate methods

form.formFieldDidBeginEditing(self)


    return true;
}
//MARK  - UITextViewDelegate methods

form.formFieldDidBeginEditing(self)



form.formFieldInputDidEnd(self)
//MARK  - EZFormField methods

    return value
}

	self.internalValue  = NSString.stringWithFormat("%", value)
    else {
	self.internalValue = value
    }
}









//MARK  - Memory Management

	_invalidIndicatorPosition = EZFormTextFieldInvalidIndicatorPositionRight
	_inputFilterBlocks  = NSMutableArray()
}

}