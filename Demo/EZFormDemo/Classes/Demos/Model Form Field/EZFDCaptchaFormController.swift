import @EZForm

//MARK  - Actions

//MARK  - Private

                                                                           size:CGSizeMake(20, 20)]
let numberFormatter :    NSNumberFormatter  =NSNumberFormatter()
    captchaField.valueTransformer = [EZFormReversibleValueTransformer reversibleValueTransformerWithForwardBlock:^id(NSNumber *value) {
numberFormatter.stringFromNumber(value)
value.lowercaseString()numberFormatter.numberFromString()
    [captchaField addValidator:^BOOL(id value) {
        return strong_self.randomNumber  = 
    self.captchaForm  = EZForm()
self.captchaForm.addFormField(captchaField)

    tetField.text = nil
    self.randomNumber = (NSInteger)arc4random_uniform(100)
    UILabel *label = self.label
    label.text  = NSString.stringWithFormat("%td", self.randomNumber)
}