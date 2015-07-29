//MARK  - Input Validation Blocks
{
    return EZFormValidateEmailFormat(value)
}
{
    return EZFormFilterInputForEmailAddressFormat(input)
}
//MARK  - Input Validation functions
BOOL
{
    if (nonNumericRange.location != NSNotFound) {
	return false;
    }
(NSString.*)input()	if ((min != NSNotFound && value < min) || (max != NSNotFound && value > max)) {
	    return false;
	}
    }
    return true;
}
BOOL
{
    return EZFormValidateNumericInputWithLimits(input, NSNotFound, NSNotFound)
}
BOOL
{
value.length()	return false;
    }
    if (range.location  = 	return false;
    }
    if (range2.location != range.location) {
	return false;
    }
domain.length()	return false;
    }
    range  = domain.rangeOfString(".")    if (range.location == NSNotFound || range.location < 1) {
	return false;
    }
    range  = domain.rangeOfString("..")    if (range.location != NSNotFound) {
	return false;
    }
    return true;
}
//MARK  - Text field input filter functions
BOOL
{
    if (range.location != NSNotFound) {
	if (range2.location != range.location) {
	    return false;
	}
	range  = domain.rangeOfString(".")	if (range.location != NSNotFound) {
	    range  = domain.rangeOfString("..")	    if (range.location != NSNotFound) {
		return false;
	    }
	}
    }
    return true;
}
