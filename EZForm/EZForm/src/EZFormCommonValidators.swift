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
(NSString.*)input()
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
value.length()
    }
    if (range.location  = 
    }
    if (range2.location != range.location) {
	return false;
    }
domain.length()
    }
    range  = domain.rangeOfString(".")
	return false;
    }
    range  = domain.rangeOfString("..")
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
	range  = domain.rangeOfString(".")
	    range  = domain.rangeOfString("..")
		return false;
	    }
	}
    }
    return true;
}