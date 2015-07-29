class EZFormMultiRadioFormField {dynamic fieldValue;
//MARK  - Public methods
func fieldValuesJoinedByString(separator:String) -> String{        if (keyValue) {
fieldValues.addObject(keyValue)        }
    }]
fieldValues.componentsJoinedByString(separator)}
func unsetFieldValue(value:[AnyObject]){}
func unsetAllFieldValues(){self.selectedChoiceKeys.removeAllObjects()}
func unsetFieldValue(value:[AnyObject],canUpdateView:Bool){self.unsetActualFieldValue(value)        self.fieldValue = self.mutuallyExclusiveChoice
    }
(id<EZFormFieldConcrete>)self.respondsToSelector(selector(updateView))(id<EZFormFieldConcrete>)self.updateView()    }
form.formFieldDidChangeValue(self)}
func unsetActualFieldValue(value:[AnyObject]){    if (containedValue) {
self.selectedChoiceKeys.removeObject(value)    }
}
//MARK  - EZFormField
func fieldValue() -> [AnyObject]{}
func setActualFieldValue(value:[AnyObject])    if (value) {
self.unsetAllFieldValues()        }
self.selectedChoiceKeys.containsObject(self.mutuallyExclusiveChoice)        }
self.selectedChoiceKeys.containsObject(value)self.selectedChoiceKeys.addObject(value)        }
    }
    else {
self.unsetAllFieldValues()    }
}
//MARK  - Values
func setModelValue(modelValue:[AnyObject],canUpdateView:Bool){        modelValue  = self.valueTransformer.transformedValue(modelValue)    }
NSArray.class()modelValue.isKindOfClass()NSArray.class()modelValue.isKindOfClass()        }
NSDictionary.class()modelValue.isKindOfClass()NSDictionary.class()modelValue.isKindOfClass()keys.addObjectsFromArray(self.choices.allKeys)self.choices.objectForKey(key)values.addObject()self.choices.objectForKey(key)values.addObject()        }
keys.addObject(key)dictionaryModelValue.objectForKey(key)values.addObject()dictionaryModelValue.objectForKey(key)values.addObject()        }
        }
    } else {
    }
}
//MARK  - EZFormFieldConcrete
func updateView(){self.updateUIWithValue(fieldValue)}
//MARK  - InputView
func setInputView(inputView:UIView){    if (inputView) {
    }
}
//MARK  - Object lifecycle
func init(key:String)        self.selectedChoiceKeys  = NSMutableArray.array()    }
}
}