Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'username',
		'pass',
		'preguntas',
		'respuestas',
		'followed',
		'topicosInteres'
	],
	#category : #'CuOOra-Model'
}

{ #category : #initialization }
Usuario >> initialize [
preguntas := OrderedCollection new.
respuestas := OrderedCollection new.
followed := OrderedCollection new.
topicosInteres := OrderedCollection new.
]
