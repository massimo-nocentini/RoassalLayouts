Trait {
	#name : 'RSTWalkBasedRegularTreeGapsChildrenSizeDepth',
	#category : 'Roassal-Layouts-Core',
	#package : 'Roassal-Layouts',
	#tag : 'Core'
}

{ #category : 'gap' }
RSTWalkBasedRegularTreeGapsChildrenSizeDepth >> gapAmongParent: aParent andChild: aChild default: aGap layout: layout [

	^ (layout childrenOf: aParent) size * aGap + aGap
]
