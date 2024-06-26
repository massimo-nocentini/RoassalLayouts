"
`RSLayout` is an abstract class which represents a layout made to set the position of a group of shapes.

Layouts perform once on a group of shapes, if you want to apply a relayout, you have to call again the layout.
You can use the layout creating a new instance of it.
```st
layout := RSGridLayout new.
layout on: shapes.
```
Or using the class method `RSLayout class >> #on:`

```st
RSGridLayout on: shapes
```
My instance variable is
- translator, an `RSLayoutTranslator` to set the position based on the bounding box of each shape.

I collaborate with
- `RSBoundingShape` to get the shape position.
- `RSAbstractLine` to get the relation between two bounding shapes.

I provide the following methods.

- `RSLayout >> #on:`, a shortcut to call `applyOn:`
- `RSLayout >> #on:edges:`, similar to on, but using custom links/edges/lines.
- `RSLayout >> #userDefinedEdges:`, to set the nodes links/edges/lines for the layout.
- `RSLayout >> #applyOn:`, a shortcut to call `executeOnElements:`
- `RSLayout >> #executeOnElements:`, to initialize and call the execution of the layout
- `RSLayout >> #doInitialize:`, override this method to initialize the layout with a group of shapes.
- `RSLayout >> #doExecute:`, override this method and set the position of each element here.
- `RSLayout >> #doPost:`, orerride this method to finalize the the layout process.

"
Class {
	#name : 'RSLayout',
	#superclass : 'Object',
	#instVars : [
		'translator'
	],
	#category : 'Roassal-Layouts-Core',
	#package : 'Roassal-Layouts',
	#tag : 'Core'
}

{ #category : 'documentation' }
RSLayout class >> addDocumentSectionHierarchy: aBuilder [

	aBuilder newLine.
	aBuilder header: [ :builder | builder text: 'Hierarchy' ] withLevel: 2.
	SpDocumentHierarchyBuilder new
		fromClass: RSLayout;
		builder: aBuilder;
		filter: [ :eachClass | eachClass package name beginsWith: 'Roassal-' ];
		buildFor: self
]

{ #category : 'documentation' }
RSLayout class >> buildMicroDownUsing: aBuilder withComment: aString [
	super buildMicroDownUsing: aBuilder withComment: aString.
	self addDocumentSectionHierarchy: aBuilder
]

{ #category : 'testing' }
RSLayout class >> isAbstract [
	^ self name = #RSLayout
]

{ #category : 'public' }
RSLayout class >> on: aCollection [
	"main entry point of the class"

	"If aCollection is empty, then there is not much to do"
	aCollection isEmpty ifTrue: [ ^ aCollection ].
	self new applyOn: aCollection.
	^ aCollection
]

{ #category : 'public' }
RSLayout class >> on: elements edges: edges [
	"To make all the layout polymorphic"

	^ self on: elements
]

{ #category : 'hook' }
RSLayout >> applyOn: elements [
	"Return quickly if there is nothing to do"
	elements isEmpty ifTrue: [ ^ self ].
	self executeOnElements: elements
]

{ #category : 'hook' }
RSLayout >> doExecute: shapes [
	"Performs the layout"

	self subclassResponsibility
]

{ #category : 'hook' }
RSLayout >> doInitialize: elements [
	"Method executed before beginning the layout. Useful when the graph to be ordered need to be prepared"
	"self announce: (ROLayoutBegin new elements: elements)."
]

{ #category : 'hook' }
RSLayout >> doPost: elements [
	"Method executed after performing the layout"
]

{ #category : 'hook' }
RSLayout >> executeOnElements: elements [
	"Execute the layout, myself, on the elements"

	self doInitialize: elements.
	self doExecute: elements asGroup.
	self doPost: elements
]

{ #category : 'initialization' }
RSLayout >> initialize [
	super initialize.
	translator := RSLayoutTranslator default
]

{ #category : 'hook' }
RSLayout >> on: elements [
	self applyOn: elements
]

{ #category : 'hook' }
RSLayout >> on: elements edges: edges [
	self applyOn: elements
]

{ #category : 'hook' }
RSLayout >> step [
	"use this method for animations"
]

{ #category : 'accessing' }
RSLayout >> translator [
	^ translator
]

{ #category : 'accessing' }
RSLayout >> translator: aTranslator [
	translator := aTranslator
]

{ #category : 'hook' }
RSLayout >> userDefinedLines: aCollectionOfLines [
	"Do nothing"
]
