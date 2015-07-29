//MARK  - EZFormTextField class extension
//MARK  - EZFormTextField implementation
class EZFormTextField {//MARK  - Input Filters
inputFilter.copy()self.inputFilterBlocks.addObject()inputFilter.copy()self.inputFilterBlocks.addObject()}
func removeInputFilters(){self.inputFilterBlocks.removeAllObjects()}
func setInputFilterFunction(filterFn:TEXTFIELDFILTER){    inputFilterFn = filterFn
}
//MARK  - Wire up user controls
func useTextField(textField:UITextField){self.unwireUserViews()    self.userControl = textField
self.wireUpUserControl()self.updateView()}
func useTextView(textView:UITextView){self.unwireUserViews()    self.userControl = textView
self.wireUpUserControl()self.updateView()}
func useLabel(label:UIView){self.unwireUserViews()    self.userControl = label
self.wireUpUserControl()self.updateView()}
func wireUpTextField(){    UITextField *textField = (UITextField *)self.userControl
    textField.delegate = self
}
func wireUpTextView(){    UITextView *textView = (UITextView *)self.userControl
    textView.delegate = self
}
func wireUpInputControl(){}
func wireUpUserControl(){UITextField.class()self.userControl.isKindOfClass()UITextField.class()self.userControl.isKindOfClass()self.wireUpTextField()    }
UITextView.class()self.userControl.isKindOfClass()UITextView.class()self.userControl.isKindOfClass()self.wireUpTextView()    }
EZFormInputControl.class()self.userControl.isKindOfClass()EZFormInputControl.class()self.userControl.isKindOfClass()self.wireUpInputControl()    }
    if (nil  = 	__strong EZForm *form = self.form
	self.userControl.inputAccessoryView  = form.inputAccessoryView()    }
}
//MARK  - Unwire user controls
func unwireTextField(){    UITextField *textField = (UITextField *)self.userControl
    if (textField.delegate == self) textField.delegate = nil
}
func unwireTextView(){    UITextView *textView = (UITextView *)self.userControl
    if (textView.delegate == self) textView.delegate = nil
}
func unwireUserControl(){UITextField.class()self.userControl.isKindOfClass()UITextField.class()self.userControl.isKindOfClass()self.unwireTextField()    }
UITextView.class()self.userControl.isKindOfClass()UITextView.class()self.userControl.isKindOfClass()self.unwireTextView()    }
	self.userControl.inputAccessoryView = nil
    }
    self.userControl = nil
}
//MARK  - Text field control events
func textFieldAllEditingEvents(sender:[AnyObject]){    UITextField *textField = (UITextField *)sender
self.updateValidityIndicators()}
func textFieldEditingDidEndOnExit(sender:[AnyObject]){    #pragma unused(sender)
form.formFieldInputFinished(self)}
func textFieldEditingDidEnd(sender:[AnyObject]){#pragma unused(sender)
form.formFieldInputDidEnd(self)}
//MARK  - Input control events
func inputControlEditingDidBegin(sender:[AnyObject]){    #pragma unused(sender)
form.formFieldDidBeginEditing(self)}
func inputControlEditingDidEndOnExit(sender:[AnyObject]){    #pragma unused(sender)
form.formFieldInputFinished(self)}
func inputControlEditingDidEnd(sender:[AnyObject]){#pragma unused(sender)
form.formFieldInputDidEnd(self)}
//MARK  - Is input valid
func isInputValid(inputStr:String) -> Bool{	return false;
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
func setTextFieldInvalidIndicatorView(view:UIView,viewMode:UITextFieldViewMode){    if (_invalidIndicatorPosition == EZFormTextFieldInvalidIndicatorPositionRight) {
(UITextField.*)self.userControl(viewMode)(UITextField.*)self.userControl(view)    }
    else if (_invalidIndicatorPosition == EZFormTextFieldInvalidIndicatorPositionLeft) {
(UITextField.*)self.userControl(viewMode)(UITextField.*)self.userControl(view)    }
}
func updateValidityIndicators(){UITextField.class()self.userControl.isKindOfClass()UITextField.class()self.userControl.isKindOfClass()self.isValid()	    }
	    else {
	    }
	}
    }
}
func updateUIWithValue(value:String){    }
self.updateValidityIndicators()}
func updateUI(){self.updateUIWithValue(self.fieldValue)}
func formFieldWithText(text:String,range:NSRange,string:String) -> Bool{	    return false;
	}
	resultingString  = NSCharacterSet.whitespaceAndNewlineCharacterSet()resultingString.stringByTrimmingCharactersInSet()NSCharacterSet.whitespaceAndNewlineCharacterSet()resultingString.stringByTrimmingCharactersInSet()    }
    return result
}
//MARK  - EZFormFieldConcrete methods
func typeSpecificValidation() -> Bool{	result = false;
    }
    return result
}
func updateView(){self.updateUI()}
//MARK  - UITextFieldDelegate methods
func textFieldDidBeginEditing(textField:UITextField){    #pragma unused(textField)
form.formFieldDidBeginEditing(self)}
func textField(textField:UITextField,range:NSRange,string:String) -> Bool{}
func textFieldShouldReturn(textField:UITextField) -> Bool{    #pragma unused(textField)
    return true;
}
//MARK  - UITextViewDelegate methods
func textViewDidBeginEditing(textView:UITextView){    #pragma unused(textView)
form.formFieldDidBeginEditing(self)}
func textView(textView:UITextView,range:NSRange,text:String) -> Bool{}
func textViewDidChange(textView:UITextView){self.updateValidityIndicators()}
func textViewDidEndEditing(textView:UITextView){    #pragma unused(textView)
form.formFieldInputDidEnd(self)}
//MARK  - EZFormField methods
func actualFieldValue() -> [AnyObject]{	value  = NSCharacterSet.whitespaceAndNewlineCharacterSet()value.stringByTrimmingCharactersInSet()NSCharacterSet.whitespaceAndNewlineCharacterSet()value.stringByTrimmingCharactersInSet()    }
    return value
}
func setActualFieldValue(value:[AnyObject]){    if (value) {
	self.internalValue  = NSString.stringWithFormat("%", value)    }
    else {
	self.internalValue = value
    }
}
func becomeFirstResponder(){self.userControl.becomeFirstResponder()}
func resignFirstResponder(){self.userControl.resignFirstResponder()}
func canBecomeFirstResponder() -> Bool{self.userControl.canBecomeFirstResponder()}
func isFirstResponder() -> Bool{self.userControl.isFirstResponder()}
func userView() -> UIView {}
func unwireUserViews(){self.unwireUserControl()}
func acceptsInputAccessory() -> Bool{}
func setInputAccessoryView(inputAccessoryView:UIView){(UITextField.*)self.userControl(inputAccessoryView)}
func inputAccessoryView() -> UIView {}
//MARK  - Memory Management
func init(key:String)	_trimWhitespace = true;
	_invalidIndicatorPosition = EZFormTextFieldInvalidIndicatorPositionRight
	_inputFilterBlocks  = NSMutableArray()NSMutableArray()    }
}
func deinit(){self.unwireUserControl()}
}