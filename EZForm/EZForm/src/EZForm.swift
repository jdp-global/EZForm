//MARK  - EZForm class extension
//MARK  - EZForm implementation
class EZForm {

self.autoScrollViewForKeyboardInput(nil)

self.configureInputAccessoryForFormField(formField)
}

	    break
	}
    }
    return result
}

	    break
	}
    }
    return result
}

	}
    }
    return result
}

    }
    return keys
}

}

	    break
	}
    }
}

    return result
}

formField.resignFirstResponder()
    _resigningFirstResponder = false;
}

	    break
	}
    }
    return result
}

}

    if (EZFormInvalidIndicatorViewTypeTriangleExclamation == invalidIndicatorViewType) {
	invalidIndicatorView  = EZFormInvalidIndicatorTriangleExclamationView.initWithFrame(CGRectMake(0.0f, 0.0f, size.width, size.height))
    return invalidIndicatorView
}
//MARK  - Private Methods

}

	__strong id<EZFormDelegate> delegate = self.delegate


	else {
let cell :	    UITableViewCell  =formField.userView()UITableViewCell.class().superviewOfKind()
		indexPath  = (UITableView.*)self.viewToAutoScroll(cell)
		    indexPath  = (UITableView.*)self.viewToAutoScroll(cell.frame.origin)
	    }
	}
	if (indexPath) {

    }
UICollectionView.class()self.viewToAutoScroll.isKindOfClass()
        __strong id<EZFormDelegate> delegate = self.delegate

        else {
let cell :            UICollectionViewCell  =formField.userView()UICollectionViewCell.class().superviewOfKind()
                indexPath  = (UICollectionView.*)self.viewToAutoScroll(cell)
        }
        if (indexPath) {

    }
UIScrollView.class()self.viewToAutoScroll.isKindOfClass()
	    CGRect scrollRect = CGRectInset(self.autoScrollForKeyboardInputVisibleRect, -self.autoScrollForKeyboardInputPaddingSize.width, -self.autoScrollForKeyboardInputPaddingSize.height) 

	else {
let formFieldView :	    UIView  =formField.userView()
		CGRect convertedFrame  = 

	}
    }
UIView.class()self.viewToAutoScroll.isKindOfClass()
	if (CGRectIsEmpty(self.autoScrollForKeyboardInputVisibleRect)) {
let formFieldView :	    UIView  =formField.userView()
	}
	else {
	    fieldViewFrame = CGRectInset(self.autoScrollForKeyboardInputVisibleRect, -self.autoScrollForKeyboardInputPaddingSize.width, -self.autoScrollForKeyboardInputPaddingSize.height) 
	}
	if (! CGRectIsNull(fieldViewFrame)) {
	    fieldViewFrame = CGRectInset(fieldViewFrame, -self.autoScrollForKeyboardInputPaddingSize.width, -self.autoScrollForKeyboardInputPaddingSize.height) 
	    CGRect relativeKeyboardFrame  = 
		CGRect newFrame = self.viewToAutoScroll.frame
		CGFloat dy = CGRectGetMaxY(fieldViewFrame) - CGRectGetMinY(relativeKeyboardFrame)
		newFrame.origin.y -= dy
		if (CGRectIsNull(_autoScrolledViewOriginalFrame)) {
		    _autoScrolledViewOriginalFrame = self.viewToAutoScroll.frame
		}
		[UIView animateWithDuration:_keyboardAnimationDuration animations:^{
		    self.viewToAutoScroll.frame = newFrame
		}]
	    }
	}
    }
}

    if (intersectsRect.size.height > 0.0f) {
	UIEdgeInsets contentInset
	UIEdgeInsets scrollIndicatorInsets
	if (_scrollViewInsetsWereSaved) {
	    contentInset = _autoScrolledViewOriginalContentInset
	    scrollIndicatorInsets = _autoScrolledViewOriginalScrollIndicatorInsets
	}
	else {
	    contentInset = scrollView.contentInset
	    scrollIndicatorInsets = scrollView.scrollIndicatorInsets
	    _autoScrolledViewOriginalContentInset = contentInset
	    _autoScrolledViewOriginalScrollIndicatorInsets = scrollIndicatorInsets
	    _scrollViewInsetsWereSaved = true;
	}
	contentInset.bottom += (intersectsRect.size.height - contentInset.bottom)
	scrollIndicatorInsets.bottom += (intersectsRect.size.height - scrollIndicatorInsets.bottom)
	if (! UIEdgeInsetsEqualToEdgeInsets(scrollView.contentInset, contentInset) || ! UIEdgeInsetsEqualToEdgeInsets(scrollView.scrollIndicatorInsets, scrollIndicatorInsets)) {
	    void (^insetChanges)(void) = ^{
		scrollView.contentInset = contentInset
		scrollView.scrollIndicatorInsets = scrollIndicatorInsets
	    }
	    if (_keyboardAnimationDuration > 0.0) {

	    else {
		insetChanges()
	    }
	}
    }
}

	UIEdgeInsets autoScrolledViewOriginalContentInset = _autoScrolledViewOriginalContentInset
	UIEdgeInsets autoScrolledViewOriginalScrollIndicatorInsets = _autoScrolledViewOriginalScrollIndicatorInsets
	void (^changeInsets)(void) = ^{
	    if (! UIEdgeInsetsEqualToEdgeInsets(autoScrolledViewOriginalContentInset, scrollView.contentInset)) {
	    }
	    if (! UIEdgeInsetsEqualToEdgeInsets(autoScrolledViewOriginalScrollIndicatorInsets, scrollView.scrollIndicatorInsets)) {
	    }
	}
	if (animated) {

	else {
	    changeInsets()
	}
    }
    _autoScrolledViewOriginalContentInset = UIEdgeInsetsZero
    _autoScrolledViewOriginalScrollIndicatorInsets = UIEdgeInsetsZero
    _scrollViewInsetsWereSaved = false;
}

	    [UIView animateWithDuration:animationDuration animations:^{
		self.viewToAutoScroll.frame = self->_autoScrolledViewOriginalFrame
	    }]
	}
	_autoScrolledViewOriginalFrame = CGRectNull
    }


	if (searchForwards) {
	    startIndex = (NSInteger)fieldIndex+1
	    indexIncrement = 1
	}
	else {
	    startIndex = (NSInteger)fieldIndex-1
	    indexIncrement = -1
	}
	for (NSInteger index = 
		break
	    }
	}
    }
    return result
}


	nextFormField  = 
    if (nextFormField) {
self.selectFormFieldForInput(nextFormField)
    else {
formField.resignFirstResponder()
    }
}


}

}
//MARK  - Input Accessories

    if (EZFormInputAccessoryTypeNone != type) {
        if (nil == _inputAccessoryView) {
let accessoryView :            EZFormStandardInputAccessoryView  =EZFormStandardInputAccessoryView.initWithFrame(CGRectMake(0.0f, 0.0f, 320.0f, 44.0f))
                accessoryView.tintColor = self.inputAccessoryViewTintColor
            }

            }
            accessoryView.translucent = self.inputAccessoryViewTranslucent
            if (type == EZFormInputAccessoryTypeDone || type == EZFormInputAccessoryTypeDoneLeftAligned) {
                accessoryView.hidesPrevNextItem = true;
            }
            if (type == EZFormInputAccessoryTypeStandardLeftAligned || type == EZFormInputAccessoryTypeDoneLeftAligned) {
                accessoryView.doneButtonPosition = EZFormStandardInputAccessoryViewDoneButtonPositionLeft
            }
            accessoryView.inputAccessoryViewDelegate = self
            self.inputAccessoryView = accessoryView
        }
        inputAccessoryView = self.inputAccessoryView
    }
    return inputAccessoryView
}

	    formField.inputAccessoryView = inputAccessoryView
	}
    }
}

	[inputAccessoryView setNextActionEnabled:(nextFormField ! = 
}

        return _inputAccessoryView
    }
self.inputAccessoryViewForType(self.inputAccessoryType)
//MARK  - EZFormInputAccessoryViewDelegate methods

}

	if (nextFormField) {
self.selectFormFieldForInput(nextFormField)
    }
}

	if (nextFormField) {
self.selectFormFieldForInput(nextFormField)
    }
}
//MARK  - Keyboard Notifications

UIScrollView.class()UITableView.class()self.viewToAutoScroll.isKindOfClass()self.viewToAutoScroll.isKindOfClass()
self.scrollFormFieldToVisible(formField)
}

self.revertAutoScrolledViewAnimationDuration(animationDuration)
}

//MARK  - Memory Management

	_autoScrolledViewOriginalFrame = CGRectNull
	_autoScrolledViewOriginalScrollIndicatorInsets = UIEdgeInsetsZero
	_autoScrollForKeyboardInputPaddingSize = CGSizeMake(0.0f, 10.0f)
	_autoScrollForKeyboardInputVisibleRect = CGRectZero
	_scrollViewInsetsWereSaved = false;
        _inputAccessoryViewTranslucent = true;
NSNotificationCenter.defaultCenter()
}

    }
NSNotificationCenter.defaultCenter().removeObserver(self)
}