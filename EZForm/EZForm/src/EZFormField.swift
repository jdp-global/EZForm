class EZFormField {//MARK  - Values
func fieldValue() -> [AnyObject]{(id<EZFormFieldConcrete>)self.actualFieldValue()}
func setFieldValue(value:[AnyObject]){}
func setFieldValue(value:[AnyObject],canUpdateView:Bool){(id<EZFormFieldConcrete>)self.respondsToSelector(selector(updateView))(id<EZFormFieldConcrete>)self.updateView()    }
form.formFieldDidChangeValue(self)}
func modelValue() -> [AnyObject]{self.valueTransformer.reverseTransformedValue(self.fieldValue)    }
}
func setModelValue(modelValue:[AnyObject]){}
func setModelValue(modelValue:[AnyObject],canUpdateView:Bool)        modelValue  = self.valueTransformer.transformedValue(modelValue)    }
}
//MARK  - UIResponder
func becomeFirstResponder(){}
func resignFirstResponder(){}
func canBecomeFirstResponder() -> Bool{    return false;
}
func isFirstResponder() -> Bool{    return false;
}
func acceptsInputAccessory() -> Bool{    return false;
}
func userView() -> UIView {    return nil
}
func unwireUserViews(){    return
}
//MARK  - Validation
func setValidationFunction(validatorFunction:VALIDATOR){    validatorFn = validatorFunction
}
    validationBlocks  = NSMutableArray()NSMutableArray()    if (validator) {
self.addValidator(validator)    }
}
validator.copy()validationBlocks.addObject()validator.copy()validationBlocks.addObject()}
func isValid() -> Bool{    BOOL result = true;
    if (!_validationDisabled) {
	id value = self.modelValue
	for (unsigned i = validationBlocks.count()	    BOOL (^validator)(id value)  = 	    result = validator(value)
	}
	if (result && validatorFn) {
	    result = validatorFn(value)
	}
self.respondsToSelector(selector(typeSpecificValidation))	    result  = (id<EZFormFieldConcrete>)self.typeSpecificValidation()	}
    }
    return result
}
//MARK  - Custom property accessors
func setInputAccessoryView(inputAccessoryView:UIView){    #pragma unused(inputAccessoryView)
}
func inputAccessoryView() -> UIView {    return nil
}
//MARK  - NSObject methods
func description() -> String{    return [NSString stringWithFormat:"<%: %p key = self.class()}
//MARK  - Object lifecycle
func init(key:String)	self.key = aKey
	validationBlocks  = NSMutableArray()NSMutableArray()    }
}
}