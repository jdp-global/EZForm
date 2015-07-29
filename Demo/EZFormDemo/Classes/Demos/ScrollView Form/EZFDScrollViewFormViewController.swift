import @EZFormclass EZFDScrollViewFormViewController {func awakeFromNib(){    _form  = EZForm()EZForm()    _form.inputAccessoryType = EZFormInputAccessoryTypeStandardLeftAligned
    _form.delegate = self
let address1Field :    EZFormTextField  =EZFormTextField.initWithKey("address1")EZFormTextField.initWithKey("address1")let address2Field :    EZFormTextField  =EZFormTextField.initWithKey("address2")EZFormTextField.initWithKey("address2")let cityField :    EZFormTextField  =EZFormTextField.initWithKey("city")EZFormTextField.initWithKey("city")let stateField :    EZFormRadioField  =EZFormRadioField.initWithKey("state")EZFormRadioField.initWithKey("state")let postcodeField :    EZFormTextField  =EZFormTextField.initWithKey("postcode")EZFormTextField.initWithKey("postcode")    stateField.validationRequiresSelection = true;
    stateField.validationRestrictedToChoiceValues = true;
    stateField.unselected = "Select your state";
_form.addFormField(address1Field)_form.addFormField(address2Field)_form.addFormField(cityField)_form.addFormField(stateField)_form.addFormField(postcodeField)}
func viewDidLoad(){super.viewDidLoad()    __strong UIScrollView *scrollView = self.scrollView
    __strong UIView *formView = self.formView
    scrollView.contentSize = formView.bounds.size
self.form.formFieldForKey("address1").useTextField(self.address1TextField)self.form.formFieldForKey("address1").useTextField(self.address1TextField)self.form.formFieldForKey("address2").useTextField(self.address2TextField)self.form.formFieldForKey("address2").useTextField(self.address2TextField)self.form.formFieldForKey("city").useTextField(self.cityTextField)self.form.formFieldForKey("city").useTextField(self.cityTextField)self.form.formFieldForKey("state").useLabel(self.stateInputControl)self.form.formFieldForKey("state").useLabel(self.stateInputControl)self.form.formFieldForKey("postcode").useTextField(self.postcodeTextField)self.form.formFieldForKey("postcode").useTextField(self.postcodeTextField)let stateField :    EZFormRadioField  =self.form.formFieldForKey("state")    stateField.inputView  = UIPickerView.initWithFrame(CGRectZero)UIPickerView.initWithFrame(CGRectZero)    __strong EZFormInputControl *stateInputControl = self.stateInputControl
    stateInputControl.tapToBecomeFirstResponder = true;
self.form.autoScrollViewForKeyboardInput(scrollView)}
//MARK  - EZFormDelegate
func form(form:EZForm,formField:EZFormField,isValid:Bool){    #pragma unused(form)
    DLog("formField: % isValid: % selected", formField, (isValid?"YES":"NO"));
EZFormRadioField.class()formField.isKindOfClass()EZFormRadioField.class()formField.isKindOfClass()(EZFormRadioField.*)formField()    }
}
func formInputFinishedOnLastField(form:EZForm){    BOOL isValid  = form.isFormValid()    DLog("Form isValid: %", (isValid ? "YES":"NO"));
}
}