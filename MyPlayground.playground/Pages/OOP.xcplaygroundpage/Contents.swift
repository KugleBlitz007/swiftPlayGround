import Cocoa


// removing the object from memory have done automaticaly
// swift keeps track of the number of objects in memory ARC
// more object = less performance

// dealocate some objects of screen 1 if we move to screen 2

// Stack objects : basic types + Struct; they do not count towards the ARC

// Heap objects : Class ...

// In a multi-threaded environnement, each thread has a stack but all of the threads use the same Heap

// Stack is faster Heap is slower because stack is independent


// Stack have value types objects (making copy of them)

// Heap have reference types objects (changing the object)

// All of the Stacks are pointing to the Heap's object


struct myFirstObject { // Value types for Stacks
	
}

class mySecondObject { // Ref types for Heap
	
}

// class vs struct

/*
 Imagine a "school" where there are "classroooms"
 Each "classrooms", the teacher hands "quizzes"
 During the day, the teacher hand out many diff "quizzes" to diff "classes"
 The students will answer and return the "quizzes" to the teacher
 
 "school" = App where the Class gets created
 "classroom" = Class not moving where the actions takes places
 "quiz" = Struct moving and gets passed arround and edit
 
 */

// We use classes for something like : manager, service, factory, viewModel

// We use struct for somthing like : data models 
