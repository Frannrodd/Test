"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the C

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	contenido:		<Object>
	fecha:		<Object>
	metrica:		<Object>
	usuario:		<Object>


    Implementation Points
"
Class {
	#name : #Respuesta,
	#superclass : #Object,
	#instVars : [
		'contenido',
		'usuario',
		'fecha',
		'metrica'
	],
	#category : #'CuOOra-Model'
}

{ #category : #'instance creation' }
Respuesta class >> contenido: unContenido usuario: unUsuario [ 
 	^ self new
		contenido: unContenido ;
		usuario: unUsuario ;
		metrica: Metrica new ; 
		fecha: DateAndTime today ;
	yourself .
]

{ #category : #accessing }
Respuesta >> contenido: anObject [
	contenido := anObject
]

{ #category : #accessing }
Respuesta >> fecha: anObject [
	fecha := anObject
]

{ #category : #initialization }
Respuesta >> initialize [ 
	contenido := ''.
	usuario  := Usuario new.
	fecha  := DateAndTime .
	metrica := Metrica  new.
]

{ #category : #accessing }
Respuesta >> metrica: anObject [
	metrica := anObject
]

{ #category : #operations }
Respuesta >> puntaje [
	^metrica puntaje.
]

{ #category : #accessing }
Respuesta >> usuario: anObject [
	usuario := anObject
]
