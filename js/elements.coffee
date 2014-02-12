fromPrototype = (el, custom) ->
	if custom?
		prototype: (Object.create el.prototype, custom)
	else
		prototype: (Object.create el.prototype)

CatTimeline = fromPrototype HTMLElement, { test: -> console.log 'test'}

document.registerElement 'cat-timeline',   CatTimeline
document.registerElement 'cat-grid',       (fromPrototype HTMLElement)
document.registerElement 'cat-gridline',   (fromPrototype HTMLElement)
document.registerElement 'cat-animations', (fromPrototype HTMLElement)
document.registerElement 'cat-animation',  (fromPrototype HTMLElement)
document.registerElement 'cat-selector',   (fromPrototype HTMLHeadingElement)
document.registerElement 'cat-keyframes',  (fromPrototype HTMLElement)
document.registerElement 'cat-keyframe',   (fromPrototype HTMLElement)
document.registerElement 'cat-name',       (fromPrototype HTMLHeadingElement)
document.registerElement 'cat-time',       (fromPrototype HTMLHeadingElement)
document.registerElement 'cat-properties', (fromPrototype HTMLElement)
document.registerElement 'cat-controls',   (fromPrototype HTMLElement)