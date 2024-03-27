Class {
	#name : 'RSPyramidalDepthsVanDerPloegTreeLayout',
	#superclass : 'RSVanDerPloegTreeLayout',
	#traits : 'RSTWalkBasedRegularTreeGapsPyramidalDepth',
	#classTraits : 'RSTWalkBasedRegularTreeGapsPyramidalDepth classTrait',
	#category : 'Roassal-Layouts-Tree',
	#package : 'Roassal-Layouts',
	#tag : 'Tree'
}

{ #category : 'hook' }
RSPyramidalDepthsVanDerPloegTreeLayout >> verticalGapAmongParent: aShapeParent andChild: aShape [

	^ self
		  gapAmongParent: aShapeParent
		  andChild: aShape
		  default:
		  (super verticalGapAmongParent: aShapeParent andChild: aShape)
		  layout: self
]
