Trait {
	#name : 'RSTWalkBasedRegularTreeGapsBlockDepth',
	#instVars : [
		'block'
	],
	#category : 'Roassal-Layouts-Core',
	#package : 'Roassal-Layouts',
	#tag : 'Core'
}

{ #category : 'as yet unclassified' }
RSTWalkBasedRegularTreeGapsBlockDepth >> depthBlock: aBlock [

	block := aBlock
]

{ #category : 'gap' }
RSTWalkBasedRegularTreeGapsBlockDepth >> gapAmongParent: aParent andChild: aChild default: aGap layout: layout [

	^ block value: aParent value: aChild value: aGap
]
