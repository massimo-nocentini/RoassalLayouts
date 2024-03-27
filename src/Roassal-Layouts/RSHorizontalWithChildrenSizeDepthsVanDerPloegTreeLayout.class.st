Class {
	#name : 'RSHorizontalWithChildrenSizeDepthsVanDerPloegTreeLayout',
	#superclass : 'RSHorizontalVanDerPloegTreeLayout',
	#traits : 'RSTWalkBasedRegularTreeGapsChildrenSizeDepth',
	#classTraits : 'RSTWalkBasedRegularTreeGapsChildrenSizeDepth classTrait',
	#category : 'Roassal-Layouts-Tree',
	#package : 'Roassal-Layouts',
	#tag : 'Tree'
}

{ #category : 'positioning' }
RSHorizontalWithChildrenSizeDepthsVanDerPloegTreeLayout >> horizontalGapAmongParent: aShapeParent andChild: aShape [

	^ self
		  gapAmongParent: aShapeParent
		  andChild: aShape
		  default:
		  (super horizontalGapAmongParent: aShapeParent andChild: aShape)
		  layout: self
]
