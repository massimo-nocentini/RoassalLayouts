"
This trait defines methods to get information of a roassal shape like the gap, the width and height.
It applies this properties for a horizontal tree layout.
Check similarities with `RSTWalkBasedRegularVerticalTreeLayout`
"
Trait {
	#name : 'RSTWalkBasedRegularHorizontalTreeLayout',
	#traits : 'RSTGapsHolder',
	#classTraits : 'RSTGapsHolder classTrait',
	#category : 'Roassal-Layouts-Traits',
	#package : 'Roassal-Layouts',
	#tag : 'Traits'
}

{ #category : 'positioning' }
RSTWalkBasedRegularHorizontalTreeLayout >> breadthGapAmong: aShapeParent and: aShape [

	^ self verticalGapAmong: aShapeParent and: aShape
]

{ #category : 'positioning' }
RSTWalkBasedRegularHorizontalTreeLayout >> breadthMeasureOf: aShape [

	^ aShape height
]

{ #category : 'positioning' }
RSTWalkBasedRegularHorizontalTreeLayout >> depthGapAmong: aShapeParent and: aShape [

	^ self horizontalGapAmongParent: aShapeParent andChild: aShape
]

{ #category : 'positioning' }
RSTWalkBasedRegularHorizontalTreeLayout >> depthMeasureOf: aShape [

	^ aShape width
]

{ #category : 'positioning' }
RSTWalkBasedRegularHorizontalTreeLayout >> horizontalGapAmongParent: aShapeParent andChild: aShape [

	self explicitRequirement
]

{ #category : 'positioning' }
RSTWalkBasedRegularHorizontalTreeLayout >> positionOfShape: aShape atDepth: depth atBreadth: breadth [

	| shift |
	shift := aShape extent / 2.
	^ depth @ breadth + shift
]

{ #category : 'positioning' }
RSTWalkBasedRegularHorizontalTreeLayout >> updateDepthBreakingIndexOfParent: aShape at: position amongChild: aChild at: childPosition [

	^ (position y > childPosition y) asBit
]

{ #category : 'positioning' }
RSTWalkBasedRegularHorizontalTreeLayout >> verticalGapAmong: aShapeParent and: aShape [

	self explicitRequirement
]
