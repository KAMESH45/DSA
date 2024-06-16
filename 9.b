#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// Structure to represent an adjacency list node
typedef struct AdjListNode {
    int dest;
    struct AdjListNode* next;
} AdjListNode;
// Structure to represent an adjacency list
typedef struct AdjList {
    struct AdjListNode *head;
} AdjList;

// Structure to represent a graph
typedef struct Graph {
    int V;
    struct AdjList* array;
} Graph;

// Function to create a new adjacency list node
AdjListNode* newAdjListNode(int dest) {
    AdjListNode* newNode = (AdjListNode*)malloc(sizeof(AdjListNode));
    newNode->dest = dest;
    newNode->next = NULL;
    return newNode;
}
/#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// Structure to represent an adjacency list node
typedef struct AdjListNode {
    int dest;
    struct AdjListNode* next;
} AdjListNode;
// Structure to represent an adjacency list
typedef struct AdjList {
    struct AdjListNode *head;
} AdjList;

// Structure to represent a graph
typedef struct Graph {
    int V;
    struct AdjList* array;
} Graph;

// Function to create a new adjacency list node
AdjListNode* newAdjListNode(int dest) {
    AdjListNode* newNode = (AdjListNode*)malloc(sizeof(AdjListNode));
    newNode->dest = dest;
    newNode->next = NULL;
    return newNode;
}
      }
    }
    free(visited);
    free(queue);
}

// Function to print the adjacency list representation of the graph
void printGraph(Graph* graph) {
    for (int v = 0; v < graph->V; ++v) {
        AdjListNode* pCrawl = graph->array[v].head;
        printf("\n Adjacency list of vertex %d\n head ", v);
        while (pCrawl) {
            printf("-> %d", pCrawl->dest);
            pCrawl = pCrawl->next;
        }
        printf("\n");
    }
}

int main() {
    int V = 5;
    Graph* graph = createGraph(V);
    addEdge(graph, 0, 1);
    addEdge(graph, 0, 4);
    addEdge(graph, 1, 2);
    addEdge(graph, 1, 3);
    addEdge(graph, 1, 4);
    addEdge(graph, 2, 3);
    addEdge(graph, 3, 4);

    printf("Graph adjacency list:\n");
    printGraph(graph);

    printf("\nBreadth First Traversal starting from vertex 0:\n");
    BFS(graph, 0);

    return 0;
}
