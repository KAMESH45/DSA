#include <stdio.h>
#include <stdlib.h>
typedef struct Stack {
    int *items;
    int top;
    int max_size;
} Stack;

// Function to initialize the stack
void initialize(Stack *s, int max_size) {
    s->items = (int *)malloc(max_size * sizeof(int));
    s->top = -1;
    s->max_size = max_size;
}
// Function to check if the stack is empty
int isEmpty(Stack *s) {
    return s->top == -1;
}

// Function to push an element onto the stack
void push(Stack *s, int newItem) {
    if (s->top == s->max_size - 1) {
        printf("Stack is full. Cannot push %d\n", newItem);
        return;
    }
    s->items[++(s->top)] = newItem;
}

// Function to pop an element from the stack
int pop(Stack *s) {
    if (isEmpty(s)) {
        printf("Stack is empty. Cannot pop\n");
        return -1;
    }
    return s->items[(s->top)--];
}

// Function to display the move
void displayMove(char source, char destination, int disk) {
    printf("Move disk %d from %c to %c\n", disk, source, destination);
}

// Recursive function to solve Tower of Hanoi problem
void towerOfHanoi(int numDisks, Stack *source, Stack *auxiliary, Stack *destination, char s, char a, char d) {
    if (numDisks == 1) {
        int disk = pop(source);
        push(destination, disk);
        displayMove(s, d, disk);
        return;
    }
