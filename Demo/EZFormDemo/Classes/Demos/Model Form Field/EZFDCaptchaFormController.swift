import @EZFormclass EZFDCaptchaFormController {func viewDidLoad(){super.viewDidLoad()self()}
func viewWillAppear(animated:Bool){super.viewWillAppear(animated)self._resetForm()}
//MARK  - Actions
func _newCaptureButtonAction(sender:[AnyObject]) -> IBAction{self._resetForm()}
//MARK  - Private
func _initializeForm(){let captchaField :    EZFormTextField  =EZFormTextField.initWithKey("captcha")EZFormTextField.initWithKey("captcha")captchaField.useTextField(self.textField)    captchaField.invalidIndicatorView = [EZForm formInvalidIndicatorViewForType:EZFormInvalidIndicatorViewTypeTriangleExclamation
                                                                           size:CGSizeMake(20, 20)]
let numberFormatter :    NSNumberFormatter  =NSNumberFormatter()NSNumberFormatter()    numberFormatter.locale  = NSLocale.currentLocale()    numberFormatter.numberStyle = NSNumberFormatterSpellOutStyle
    captchaField.valueTransformer = [EZFormReversibleValueTransformer reversibleValueTransformerWithForwardBlock:^id(NSNumber *value) {
numberFormatter.stringFromNumber(value)    } reverseBlock:^id(id value) {
value.lowercaseString()numberFormatter.numberFromString()value.lowercaseString()numberFormatter.numberFromString()    }]
    [captchaField addValidator:^BOOL(id value) {
        return strong_self.randomNumber  =     }]
    self.captchaForm  = EZForm()EZForm()    self.captchaForm.delegate = self
self.captchaForm.addFormField(captchaField)}
func _resetForm(){    UITextField *tetField = self.textField
    tetField.text = nil
    self.randomNumber = (NSInteger)arc4random_uniform(100)
    UILabel *label = self.label
    label.text  = NSString.stringWithFormat("%td", self.randomNumber)}
}