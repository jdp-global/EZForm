//MARK  - External Class Categories
//MARK  - EZFormRadioField class extension
//MARK  - EZFormRadioField implementation
class EZFormRadioField {
//MARK  - Public methods


}

    self.orderedKeys  = newChoices.allKeys()

//MARK  - EZFormFieldConcrete methods

    }
	result = false;
    }
    if (result) {
	result  = super.typeSpecificValidation()
    return result
}


//MARK  - Unwire views


	if (pickerView.dataSource == self) pickerView.dataSource = nil
	if (pickerView.delegate == self) pickerView.delegate = nil
    }
    self.userView.inputView = nil
}
//MARK  - Values

NSDictionary.class()modelValue.isKindOfClass()
keys.addObject(key)


}
//MARK  - inputView

    }

    }
UIPickerView.class()inputView.isKindOfClass()
	pickerView.showsSelectionIndicator = true;
	if (pickerView.dataSource == nil) pickerView.dataSource = self
	if (pickerView.delegate == nil) pickerView.delegate = self
    }
    else {
let exception :	NSException  =
    }
    self.userView.inputView = inputView
self.updateInputViewAnimated(NO)


	    NSUInteger index  = self.orderedKeys.indexOfObject(self.fieldValue)
		if (index ! = pickerView.selectedRowInComponent(0)
	    }
	}
    }
}
//MARK  - Choice Values

	    value = self.unselected
	}
	else {
let key :	    NSString  =index.-()
    }
    else {
	value  = self.choices.valueForKey(key)
    return value
}

	    key = nil
	}
	else {
	    key  = index.-()
    }
    else {
	key  = 
    return key
}

	value  = 
    else {
	value = self.unselected
    }
    return value
}
//MARK  - UIPickerViewDataSource

}

}
//MARK  - UIPickerViewDelegate



}