tests
testUnsigned4ByteIntegers
	self unsigned4ByteNumbers do: [ :int |
		|ref|
		ref := ByteArray new: 4.
		ref integerAt: 1 put: int size: 4 signed: false.
		self assert: (ref integerAt: 1 size: 4 signed: false) = int ]