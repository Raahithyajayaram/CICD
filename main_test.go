package main

import "testing"

func TestAdd(t *testing.T) {
	expected := 4
	result := Add(2, 2)
	if result != expected {
		t.Errorf("Test Failed: Expected %d, but got %d", expected, result)
	}
}
