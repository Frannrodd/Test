"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) des
Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	followed:		<Object>
	pass:		<Object>
	preguntas:		<Object>
	respuestas:		<Object>
	topicosInteres:		<Object>
	userName:		<Object>


    Implementation Points
"
Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'userName',
		'pass',
		'preguntas',
		'respuestas',
		'followed',
		'topicosInteres'
	],
	#category : #'CuOOra-Model'
}

{ #category : #'instance creation' }
Usuario class >> userName: unNombre pass: unaContraseña [
	^ self new
		userName: unNombre ;
		pass: unaContraseña ;
	yourself .
]

{ #category : #operations }
Usuario >> agregarPregunta: unaPregunta [
	preguntas add: unaPregunta .
]

{ #category : #operations }
Usuario >> agregarRespuesta: unaRepuesta [ 
	respuestas add: unaRepuesta .
]

{ #category : #operations }
Usuario >> agregarTopicoInteres: unTopico [
	topicosInteres add: unTopico .
]

{ #category : #operations }
Usuario >> calcularPuntaje [
	^ (preguntas sumNumbers: [:pregunta | pregunta puntaje]) + (respuestas sumNumbers: [:respuesta | respuesta puntaje] + (preguntas size * 20) +(respuestas size * 50)).
]

{ #category : #initialization }
Usuario >> initialize [
userName := ''.
pass:= ''.
preguntas := OrderedCollection new.
respuestas := OrderedCollection new.
followed := OrderedCollection new.
topicosInteres := OrderedCollection new.
]

{ #category : #accessing }
Usuario >> pass: anObject [
	pass := anObject
]

{ #category : #operations }
Usuario >> preguntasRealizadas [
	^preguntas
]

{ #category : #operations }
Usuario >> respuestasRealizadas [
	^respuestas 
]

{ #category : #operations }
Usuario >> seguirUsuario: unUsuario [ 
	followed add: unUsuario .
]

{ #category : #accessing }
Usuario >> userName: anObject [
	userName := anObject
]

{ #category : #operations }
Usuario >> votarPregunta: unaPregunta voto: unVoto [
	unaPregunta metrica: unVoto.
]

{ #category : #operations }
Usuario >> votarRepuesta: unaRespuesta voto: unVoto [
	unaRespuesta metrica: unVoto.
	
]
