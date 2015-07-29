class EZFormInputControl {dynamic text;
dynamic tapToBecomeFirstResponder;
func init(frame:CGRect,label:UILabel){	self.wrappedView = label
	self.userInteractionEnabled = true;
	label.frame = self.bounds
	label.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)
self.addSubview(label)    }
}
func awakeFromNib(){    [self.subviews enumerateObjectsUsingBlock:^(id obj, __unused NSUInteger idx, BOOL *stop) {
UILabel.class()obj.isKindOfClass()UILabel.class()obj.isKindOfClass()	    self.wrappedView = obj
	    *stop = true;
	}
    }]
    self.userInteractionEnabled = true;
}
//MARK  - First responder
func canBecomeFirstResponder() -> Bool{    return true;
}
func becomeFirstResponder() -> Bool{    BOOL result  = super.becomeFirstResponder()self.sendActionsForControlEvents(UIControlEventEditingDidBegin)    return result
}
func resignFirstResponder() -> Bool{    BOOL result  = super.resignFirstResponder()self.sendActionsForControlEvents(UIControlEventEditingDidEnd)    return result
}
//MARK  - Text property
func setText(text:String){}
func text() -> String{(id)self.wrappedView.text()}
//MARK  - Tap to become first responder
func setTapToBecomeFirstResponder(tapToBecomeFirstResponder:Bool){    if (tapToBecomeFirstResponder == true && self.tapToBecomeFirstResponderGestureRecognizer == nil) {
	self.tapToBecomeFirstResponderGestureRecognizer  = UITapGestureRecognizerUITapGestureRecognizerself.addGestureRecognizer(self.tapToBecomeFirstResponderGestureRecognizer)    }
    else if (tapToBecomeFirstResponder == false && self.tapToBecomeFirstResponderGestureRecognizer) {
self.removeGestureRecognizer(self.tapToBecomeFirstResponderGestureRecognizer)	self.tapToBecomeFirstResponderGestureRecognizer = nil
    }
}
func tapToBecomeFirstResponder() -> Bool{}
func tapToBecomeFirstResponderAction(tapGestureRecognizer:__unused UITapGestureRecognizer){self.becomeFirstResponder()}
}