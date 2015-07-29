//MARK  - External Class Categories
//MARK  - EZFormRadioField class extension
//MARK  - EZFormRadioField implementation
class EZFormRadioField {dynamic inputView;
//MARK  - Public methods
func setChoicesFromArray(choices:NSArray){}
func setChoicesFromKeys(keys:NSArray,values:NSArray){    _choices  =     self.orderedKeys = keys 
}
func setChoices(newChoices:NSDictionary){    _choices = newChoices
    self.orderedKeys  = newChoices.allKeys()}
func choiceKeys() -> NSArray {}
//MARK  - EZFormFieldConcrete methods
func typeSpecificValidation() -> Bool{	result = false;
    }
	result = false;
    }
    if (result) {
	result  = super.typeSpecificValidation()    }
    return result
}
func updateView(){self.updateUIWithValue(value)self.updateInputViewAnimated(YES)}
func fieldDisplayValue() -> String{self.actualFieldValue()self.choiceValueForKey()self.actualFieldValue()self.choiceValueForKey()}
//MARK  - Unwire views
func unwireUserViews(){self.unwireInputView()super.unwireUserViews()}
func unwireInputView(){UIPickerView.class()self.userView.inputView.isKindOfClass()UIPickerView.class()self.userView.inputView.isKindOfClass()	UIPickerView *pickerView = (UIPickerView *)self.userView.inputView
	if (pickerView.dataSource == self) pickerView.dataSource = nil
	if (pickerView.delegate == self) pickerView.delegate = nil
    }
    self.userView.inputView = nil
}
//MARK  - Values
func setModelValue(modelValue:[AnyObject],canUpdateView:Bool){        modelValue  = self.valueTransformer.transformedValue(modelValue)    }
NSDictionary.class()modelValue.isKindOfClass()NSDictionary.class()modelValue.isKindOfClass()keys.addObjectsFromArray(self.orderedKeys)self.choices.objectForKey(key)values.addObject()self.choices.objectForKey(key)values.addObject()        }
keys.addObject(key)dictionaryModelValue.objectForKey(key)values.addObject()dictionaryModelValue.objectForKey(key)values.addObject()        }
    } else {
    }
}
//MARK  - inputView
func setInputView(inputView:UIView){	throw exception;
    }
	throw exception;
    }
UIPickerView.class()inputView.isKindOfClass()UIPickerView.class()inputView.isKindOfClass()	UIPickerView *pickerView = (UIPickerView *)inputView
	pickerView.showsSelectionIndicator = true;
	if (pickerView.dataSource == nil) pickerView.dataSource = self
	if (pickerView.delegate == nil) pickerView.delegate = self
    }
    else {
let exception :	NSException  =	throw exception;
    }
    self.userView.inputView = inputView
self.updateInputViewAnimated(NO)}
func inputView() -> UIView {}
func updateInputViewAnimated(animated:Bool){UIPickerView.class()self.userView.inputView.isKindOfClass()UIPickerView.class()self.userView.inputView.isKindOfClass()	UIPickerView *pickerView = (UIPickerView *)self.userView.inputView
	    NSUInteger index  = self.orderedKeys.indexOfObject(self.fieldValue)	    if (index != NSNotFound) {
		if (index ! = pickerView.selectedRowInComponent(0)		}
	    }
	}
    }
}
//MARK  - Choice Values
func valueOrUnselectedAtIndex(index:UInt) -> String{	if (index == 0) {
	    value = self.unselected
	}
	else {
let key :	    NSString  =index.-()	    value  = self.choices.valueForKey(key)	}
    }
    else {
	value  = self.choices.valueForKey(key)    }
    return value
}
func choiceKeyAtIndex(index:UInt) -> String{	if (index == 0) {
	    key = nil
	}
	else {
	    key  = index.-()	}
    }
    else {
	key  =     }
    return key
}
func choiceValueForKey(key:String) -> [AnyObject]{    if (key) {
	value  =     }
    else {
	value = self.unselected
    }
    return value
}
//MARK  - UIPickerViewDataSource
func numberOfComponentsInPickerView(pickerView:__unused UIPickerView) -> Int{    return 1
}
func pickerView(pickerView:__unused UIPickerView,component:Int) -> Int{    return rows
}
//MARK  - UIPickerViewDelegate
func pickerView(pickerView:__unused UIPickerView,row:Int,component:Int) -> String{self.valueOrUnselectedAtIndex((NSUInteger)row)}
func pickerView(pickerView:__unused UIPickerView,row:Int,component:Int){    _selectedChoiceKey = key
self.updateValidityIndicators()}
}