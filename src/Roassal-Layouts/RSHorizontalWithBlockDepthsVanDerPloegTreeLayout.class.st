Class {
	#name : 'RSHorizontalWithBlockDepthsVanDerPloegTreeLayout',
	#superclass : 'RSHorizontalVanDerPloegTreeLayout',
	#traits : 'RSTWalkBasedRegularTreeGapsBlockDepth',
	#classTraits : 'RSTWalkBasedRegularTreeGapsBlockDepth classTrait',
	#category : 'Roassal-Layouts-Core',
	#package : 'Roassal-Layouts',
	#tag : 'Core'
}

{ #category : 'accessing' }
RSHorizontalWithBlockDepthsVanDerPloegTreeLayout >> horizontalGapAmongParent: aShapeParent andChild: aShape [

	^ self
		  gapAmongParent: aShapeParent
		  andChild: aShape
		  default:
		  (super horizontalGapAmongParent: aShapeParent andChild: aShape)
		  layout: self
]
