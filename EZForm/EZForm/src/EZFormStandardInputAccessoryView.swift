class EZFormStandardInputAccessoryView {func previousNextAction(sender:[AnyObject]){    UISegmentedControl *control = (UISegmentedControl *)sender
    if (0 == control.selectedSegmentIndex) {
inputAccessoryViewDelegate.inputAccessoryViewSelectedPreviousField()    }
    else {
inputAccessoryViewDelegate.inputAccessoryViewSelectedNextField()    }
}
func doneAction(sender:[AnyObject]){    #pragma unused(sender)
inputAccessoryViewDelegate.inputAccessoryViewDone()}
//MARK  - EZFormInputAccessoryViewProtocol methods
func setNextActionEnabled(enabled:Bool){}
func setPreviousActionEnabled(enabled:Bool){}
//MARK  - Object lifecycle
func init(frame:CGRect)        self.barStyle = UIBarStyleBlackTranslucent
        NSString *nextString = NSLocalizedString("Next", "EZForm Standard Input Accessory view - Next");
        NSString *prevString = NSLocalizedString("Previous", "EZForm Standard Input Accessory view - Previous");
let segmentTitles :        NSArray  =prevString,.nextString()        _previousNextControl  = UISegmentedControl.initWithItems(segmentTitles)UISegmentedControl.initWithItems(segmentTitles)        _previousNextControl.momentary = true;
        if (!SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO("7.0")) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
            _previousNextControl.segmentedControlStyle = UISegmentedControlStyleBar
#pragma clang diagnostic pop
        }
        self.doneItem  = UIBarButtonItemUIBarButtonItem        self.flexibleSpaceItem  = UIBarButtonItemUIBarButtonItem        self.prevNextItem  = UIBarButtonItem.initWithCustomView(self.previousNextControl)UIBarButtonItem.initWithCustomView(self.previousNextControl)        self.doneButtonPosition = EZFormStandardInputAccessoryViewDoneButtonPositionRight
    }
}
func setHidesPrevNextItem(hidesPrevNextItem:Bool){    _hidesPrevNextItem = hidesPrevNextItem
self.layoutSubviews()}
func setDoneButtonPosition(doneButtonPosition:EZFormStandardInputAccessoryViewDoneButtonPosition){    _doneButtonPosition = doneButtonPosition
self.layoutSubviews()}
func layoutSubviews(){super.layoutSubviews()    switch (self.doneButtonPosition) {
        case EZFormStandardInputAccessoryViewDoneButtonPositionLeft: {
            break
        }
        case EZFormStandardInputAccessoryViewDoneButtonPositionRight: {
            break
        }
    }
let  itemsCopy :        NSMutableArray  =self.items.mutableCopy()itemsCopy.removeObject(self.prevNextItem)        self.items  = itemsCopy.copy()    }
}
}