updating
highlightForMouseDown: aBoolean
	aBoolean 
		ifTrue: [self setProperty: #highlightedForMouseDown toValue: aBoolean]
		ifFalse: [self removeProperty: #highlightedForMouseDown].
	self changed