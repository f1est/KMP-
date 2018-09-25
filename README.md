# KMP+
[Knuth–Morris–Pratt string searching algorithm](https://en.wikipedia.org/wiki/Knuth%E2%80%93Morris%E2%80%93Pratt_algorithm)

# Whatis it?
This is a modification to the implementation of the Knuth-Morris-Pratt substring search algorithm.
Added the ability to include wildcards in the pattern, represented by an sign '?'
These wildcards allow the algorithm to match on any character in the text whenever it sees the wildcard in the pattern.

# Implementation 
The algorithm is implemented in the method find_substring(const std::string& str, const std::string& pattern). 
Given attributes the 'str' and the 'pattern', the algorithm will return the starting index of the first instance of the 'pattern' in the 'str' if found. If the 'pattern' is not in the 'str', it will return -1.

# Examples
```
std::cout << find_substring("ddabcd", "??bf") << '\n';  // returns  -1
std::cout << find_substring("abcd", "a?cd") << '\n';    // returns  0
std::cout << find_substring("abcd", "abcd") << '\n';    // returns  0
std::cout << find_substring("abcd", "ab") << '\n';      // returns  0
std::cout << find_substring("ab", "abcd") << '\n';      // returns  -1
std::cout << find_substring("ababc", "abc") << '\n';    // returns  2
std::cout << find_substring("aabaabbaaabaabaabaabaabbaabb", "aabbaab") << '\n'; // returns  20
std::cout << find_substring("aabaabbaaabaabaabaabaabbaabb", "aa?b??b") << '\n'; // returns  20 
```
