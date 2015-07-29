    EZFormGenericFieldUserControlTypeNone = 0,
    EZFormGenericFieldUserControlTypeLabel = 1,
} 
//MARK  - EZFormGenericField class extension
//MARK  - EZFormGenericField implementation
class EZFormGenericField {//MARK  - Public methods
func useLabel(label:UIView){self.unwireUserControl()    self.userControl = label
    self.userControlType = EZFormGenericFieldUserControlTypeLabel
self.updateUI()}
//MARK  - Private methods
func unwireUserControl(){    self.userControlType = EZFormGenericFieldUserControlTypeLabel
}
func updateUIWithValue(value:[AnyObject]){    if (EZFormGenericFieldUserControlTypeLabel == self.userControlType) {
	if (value) {
	    string  = NSString.stringWithFormat("%", value)	}
(UILabel.*)self.userControl(string)    }
}
func updateUI(){self.updateUIWithValue(self.fieldValue)}
//MARK  - EZFormFieldConcrete methods
func typeSpecificValidation() -> Bool{	result = false;
    }
    return result
}
func updateView(){self.updateUI()}
//MARK  - EZFormField methods
func actualFieldValue() -> [AnyObject]{}
func setActualFieldValue(value:[AnyObject]){    self.internalValue = value
}
func becomeFirstResponder(){self.userControl.becomeFirstResponder()}
func resignFirstResponder(){self.userControl.resignFirstResponder()}
func canBecomeFirstResponder() -> Bool{self.userControl.canBecomeFirstResponder()}
func isFirstResponder() -> Bool{self.userControl.isFirstResponder()}
func userView() -> UIView {}
func unwireUserViews(){self.unwireUserControl()}
func acceptsInputAccessory() -> Bool{    return false;
}
//MARK  - Memory Management
func init(key:String)    }
}
func deinit(){self.unwireUserControl()}
}