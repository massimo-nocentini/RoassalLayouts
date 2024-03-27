Trait {
	#name : 'RSTWalkBasedRegularTreeGapsChildrenSizeDepth',
	#category : 'Roassal-Layouts-Traits',
	#package : 'Roassal-Layouts',
	#tag : 'Traits'
}

{ #category : 'gap' }
RSTWalkBasedRegularTreeGapsChildrenSizeDepth >> gapAmongParent: aParent andChild: aChild default: aGap layout: layout [

	^ (layout childrenOf: aParent) size * aGap + aGap
]
