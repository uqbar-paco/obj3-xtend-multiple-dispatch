package edu.unq.obj3.base

class ListExtensions {
	static def <T> sum(Iterable<T> iterable, (T) => int transformation) {
		iterable.map(transformation).fold(0) [ acum, elem | acum + elem ]
	}
}