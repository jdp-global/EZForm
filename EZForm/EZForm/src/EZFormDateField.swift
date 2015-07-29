//MARK  - External Class Categories
//MARK  - EZFormDateField implementation
class EZFormDateField {dynamic inputView;
//MARK  - EZFormFieldConcrete methods
func updateView(){self.updateUIWithValue(value)self.updateInputViewAnimated(YES)}
//MARK  - Unwire views
func unwireUserViews(){self.unwireInputView()super.unwireUserViews()}
func unwireInputView(){UIDatePicker.class()self.userView.inputView.isKindOfClass()UIDatePicker.class()self.userView.inputView.isKindOfClass()        UIDatePicker *picker = (UIDatePicker *)self.userView.inputView
    }
    self.userView.inputView = nil
}
//MARK  - inputView
func setInputView(inputView:UIView){        throw exception;
    }
        throw exception;
    }
UIDatePicker.class()inputView.isKindOfClass()UIDatePicker.class()inputView.isKindOfClass()        UIDatePicker *picker = (UIDatePicker *)inputView
    }
    else {
let exception :        NSException  =        throw exception;
    }
    self.userView.inputView = inputView
self.updateInputViewAnimated(NO)}
func inputView() -> UIView {}
func updateInputViewAnimated(animated:Bool){UIDatePicker.class()self.userView.inputView.isKindOfClass()UIDatePicker.class()self.userView.inputView.isKindOfClass()        UIDatePicker *picker = (UIDatePicker *)self.userView.inputView
        }
    }
}
//MARK  - EZFormField methods
func actualFieldValue() -> [AnyObject]{}
func setActualFieldValue(value:[AnyObject]){NSDate.class()value.isKindOfClass( )NSDate.class()value.isKindOfClass( )        self.internalValue = value
    }
NSString.class()value.isKindOfClass( )NSString.class()value.isKindOfClass( )        self.internalValue  = self.inDateFormatter.dateFromString( value)    }
    else {
        self.internalValue = nil
    }
}
//MARK  - Object lifecycle
func init(key:String)        self.inDateFormatter  = NSDateFormatter.new()        self.outDateFormatter  = NSDateFormatter.new()    }
}
//MARK  - UIDatePicker
func onValueChanged(sender:UIDatePicker)}
}