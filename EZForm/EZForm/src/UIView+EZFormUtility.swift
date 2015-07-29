func superviewOfKind(kind:Class) -> UIView {    if (nil == self.superview) {
	return nil
    }
self.superview.isKindOfClass(kind)    }
self.superview.superviewOfKind(kind)}
}