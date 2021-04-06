"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:
For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	descripcion:		<Object>
	fecha:		<Object>
	metrica:		<Object>
	respuestas:		<Object>
	titulo:		<Object>
	topicos:		<Object>
	usuario:		<Object>


    Implementation Points
"
Class {
	#name : #Pregunta,
	#superclass : #Object,
	#instVars : [
		'titulo',
		'descripcion',
		'usuario',
		'topicos',
		'fecha',
		'respuestas',
		'metrica'
	],
	#category : #'CuOOra-Model'
}

{ #category : #'instance creation' }
Pregunta class >> titulo: unTitulo descripcion: unaDescripcion usuario: unUsuario topicos: unosTopicos [ 
	^ self new
	 	titulo: unTitulo ;
 		descripcion: unaDescripcion ;
	 	usuario: unUsuario ;
	 	topicos: unosTopicos ;
	 	fecha: DateAndTime today  ;
	yourself .
]

{ #category : #operations }
Pregunta >> agregarRepuesta: unaRepuesta [ 
	respuestas add: unaRepuesta .
]

{ #category : #accessing }
Pregunta >> descripcion: anObject [
	descripcion := anObject
]

{ #category : #accessing }
Pregunta >> fecha: anObject [
	fecha := anObject
]

{ #category : #initialization }
Pregunta >> initialize [ 
titulo := ''.
descripcion := ''.
usuario := Usuario new.
topicos := Topico new.
fecha := DateAndTime .
respuestas := OrderedCollection new.
metrica := Metrica new.
]

{ #category : #accessing }
Pregunta >> metrica: anObject [
	metrica := anObject
]

{ #category : #operations }
Pregunta >> obtenerRespuestas [
	^respuestas sort: [ :respuesta | respuesta puntaje ]
]

{ #category : #operations }
Pregunta >> puntaje [
	^metrica puntaje.
]

{ #category : #accessing }
Pregunta >> respuestas: anObject [
	respuestas := anObject
]

{ #category : #accessing }
Pregunta >> titulo: anObject [
	titulo := anObject
]

{ #category : #accessing }
Pregunta >> topicos: anObject [
	topicos := anObject
]

{ #category : #accessing }
Pregunta >> usuario: anObject [
	usuario := anObject
]
