Trait {
	#name : 'RSTWalkBasedRegularTreeGapsBlockDepth',
	#instVars : [
		'block'
	],
	#category : 'Roassal-Layouts-Traits',
	#package : 'Roassal-Layouts',
	#tag : 'Traits'
}

{ #category : 'accessing' }
RSTWalkBasedRegularTreeGapsBlockDepth >> depthBlock: aBlock [
	"accessing"

	block := aBlock
]

{ #category : 'gap' }
RSTWalkBasedRegularTreeGapsBlockDepth >> gapAmongParent: aParent andChild: aChild default: aGap layout: layout [

	^ block value: aParent value: aChild value: aGap
]
