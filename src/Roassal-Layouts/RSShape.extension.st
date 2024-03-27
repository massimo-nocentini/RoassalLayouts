Extension { #name : 'RSShape' }

{ #category : '*Roassal-Layouts' }
RSShape >> padded: aPadding shape: boxShape do: aBlock [

	| box |
	box := boxShape
		       extent: self extent + (aPadding * 2);
		       cornerRadius: aPadding;
		       yourself.

	aBlock cull: box cull: self.

	RSLocation new
		center;
		stick: box on: self.

	^ RSComposite new
		  shapes: {
				  box.
				  self };
		  yourself
]
