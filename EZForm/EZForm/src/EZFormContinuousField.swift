class EZFormContinuousField {func init(key:String)    {
        self.continuous = true;
    }
}
//MARK  - EZFormGenericField
func unwireUserViews(){super.unwireUserViews()self.unwireSlider()}
func updateUIWithValue(value:[AnyObject]){    {
        value  = self.valueFormatter.stringFromNumber(value)    }
super.updateUIWithValue(value)}
//MARK  EZFormContinousField
func useSlider(slider:[AnyObject]){self.unwireSlider()    self.slider = slider
self.wireUpSlider()}
//MARK  - Private methods
func sliderChanged(slider:[AnyObject]){    {
      slider.value = roundf(slider.value)
    }
    self.fieldValue = (slider.value);
self.updateView()}
func wireUpSlider(){    self.slider.maximumValue = self.maximumValue
    self.slider.minimumValue = self.minimumValue
    self.slider.value  = self.actualFieldValue().floatValue()self.actualFieldValue().floatValue()    self.slider.continuous = self.continuous
}
func unwireSlider(){}
}