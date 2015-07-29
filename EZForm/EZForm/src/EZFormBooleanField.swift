    EZFormBooleanFieldUserControlTypeNone = 0,
    EZFormBooleanFieldUserControlTypeButton = 1,
    EZFormBooleanFieldUserControlTypeSwitch = 2,
    EZFormBooleanFieldUserControlTypeTableViewCell = 3
} 
//MARK  - EZFormBooleanField class extension
//MARK  - EZFormBooleanField implementation
class EZFormBooleanField {//MARK  - Public methods
func toggleValue(){    self.fieldValue = (!_internalValue);
}
func useButton(button:UIButton){    self.userControl = button
    self.userControlType = EZFormBooleanFieldUserControlTypeButton
self.updateUI()self.wireUpButton()}
func useSwitch(switchControl:UISwitch){    self.userControl = switchControl
    self.userControlType = EZFormBooleanFieldUserControlTypeSwitch
self.updateUI()self.wireUpSwitch()}
func useTableViewCell(tableViewCell:UITableViewCell){    self.userControl = tableViewCell
    self.userControlType = EZFormBooleanFieldUserControlTypeTableViewCell
self.updateUI()}
//MARK  - Private methods
func wireUpButton(){}
func unwireButton(){}
func wireUpSwitch(){}
func unwireSwitch(){}
func unwireUserControl(){    if (EZFormBooleanFieldUserControlTypeButton == self.userControlType) {
self.unwireButton()    }
    else if (EZFormBooleanFieldUserControlTypeSwitch == self.userControlType) {
self.unwireSwitch()    }
    self.userControl = nil
    self.userControlType = EZFormBooleanFieldUserControlTypeNone
}
func buttonTouchUpAction(button:UIButton){    button.selected = !button.selected
    self.fieldValue = (button.selected);
}
func switchValueChangedAction(switchControl:UISwitch){    self.fieldValue = (switchControl.on);
}
func updateUI(){    if (EZFormBooleanFieldUserControlTypeButton == self.userControlType) {
(UIButton.*)self.userControl(_internalValue)    }
    else if (EZFormBooleanFieldUserControlTypeSwitch == self.userControlType) {
(UISwitch.*)self.userControl(_internalValue)    }
    else if (EZFormBooleanFieldUserControlTypeTableViewCell == self.userControlType) {
    }
}
//MARK  - EZFormField methods
func actualFieldValue() -> [AnyObject]{    return (_internalValue);
}
func setActualFieldValue(value:[AnyObject]){    _internalValue  = value.boolValue()}
func userView() -> UIView {}
func unwireUserViews(){    self.userControl = nil
}
//MARK  - EZFormFieldConcrete methods
func typeSpecificValidation() -> Bool{    if (EZFormBooleanFieldStateOn == self.validationStates && _internalValue != true) {
	result = false;
    }
    else if (EZFormBooleanFieldStateOff == self.validationStates && _internalValue != false) {
	result = false;
    }
    return result
}
func updateView(){self.updateUI()}
}