    EZFormBooleanFieldUserControlTypeNone = 0,
    EZFormBooleanFieldUserControlTypeButton = 1,
    EZFormBooleanFieldUserControlTypeSwitch = 2,
    EZFormBooleanFieldUserControlTypeTableViewCell = 3
} 
//MARK  - EZFormBooleanField class extension
//MARK  - EZFormBooleanField implementation
class EZFormBooleanField {

}

    self.userControlType = EZFormBooleanFieldUserControlTypeButton
self.updateUI()

    self.userControlType = EZFormBooleanFieldUserControlTypeSwitch
self.updateUI()

    self.userControlType = EZFormBooleanFieldUserControlTypeTableViewCell
self.updateUI()
//MARK  - Private methods





self.unwireButton()
    else if (EZFormBooleanFieldUserControlTypeSwitch == self.userControlType) {
self.unwireSwitch()
    self.userControl = nil
    self.userControlType = EZFormBooleanFieldUserControlTypeNone
}

    self.fieldValue = (button.selected);
}

}

(UIButton.*)self.userControl(_internalValue)
    else if (EZFormBooleanFieldUserControlTypeSwitch == self.userControlType) {
(UISwitch.*)self.userControl(_internalValue)
    else if (EZFormBooleanFieldUserControlTypeTableViewCell == self.userControlType) {

}
//MARK  - EZFormField methods

}



}
//MARK  - EZFormFieldConcrete methods

	result = false;
    }
    else if (EZFormBooleanFieldStateOff == self.validationStates && _internalValue != false) {
	result = false;
    }
    return result
}

}