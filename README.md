# Hubtel Coding Challenge Repo

Updated Screen:

![Updated Screen Shot](corrections.png)

## Problem Solving

1. The simplest approach would be to check if each card’s ID exists in the favorite array. For each card, you can iterate through the array and check if the ID exists, marking it as a favorite if found. However, this approach could be inefficient for large lists.

To achieve the best results, sort the favorite IDs array, which would allow for efficient searching using binary search. For each card in the list, you would perform a binary search on the sorted list of favorite IDs. Binary search reduces the lookup time from O(N) to O(log N).

Pseudocode:
- Sort the favorite IDs array (this takes O(N log N)).
- For each card in the list, use binary search on the sorted favorite IDs array to check if the card’s ID exists (each search takes O(log N)).
- If the card’s ID is found, mark it as a favorite.

2. To optimize the implementation, we can use a Set instead of a List for the favorite IDs. A Set provides O(1) average-time complexity for lookups, making it extremely efficient for checking if a card's ID is in the favorite list.

Pseudocode:
- Convert the favorite IDs list (array) to a set.
- For each card in the list, check if its ID is present in the set.
- If the card’s ID is found in the set, mark it as a favorite.



