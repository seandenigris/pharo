api
setSelectedIndex: anIndex
	"<api: #integer min: 0 max: #listSize getter: #selectedIndex registration: #whenSelectionIndexChanged:>"
	"Set the index of the item you want to be selected"
	| idx selection |
	
	self allowToSelect ifFalse: [ ^ self ].
	self okToChange ifFalse: [ ^ self ].
	
	idx := anIndex min: self listSize.
	selection := self 
					listElementAt: idx 
					ifAbsent: [ idx := 0.
								nil ].

	selectionHolder index value: idx.
	selectionHolder selection value: selection.