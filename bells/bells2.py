from ringing import Method, RowBlock, Change, Row

# 1. Define a Palindromic Method (The "Theme")
# Example: Plain Bob Minor (6 bells), which is inherently palindromic
# Place notation: &121416 (The '&' indicates symmetry/palindrome)
method = Method("&121416", bells=6, name="Plain Bob")

# 2. Create a RowBlock (The Recursive Sequence)
# This automatically generates the lead based on the method
lead_block = RowBlock(method)

# 3. Access the Recursive Data
print(f"Method: {method.full_name()}")
print(f"Is Palindromic: {method.is_palindromic()}")
print(f"Lead Length: {method.size()} changes")
print(f"Rows in Lead: {lead_block.size}")

# Iterate through the generated rows (permutations)
# This replaces the manual DFS in the previous script
for i, row in enumerate(lead_block):
    # Map row to your Tree of Life logic here
    # row is a ringing.Row object, e.g., Row('123456')
    if i < 5:
        print(f"Change {i}: {row}")

# 4. Advanced: Splicing Methods (Recursive Themes)
# You can append different methods to create a spliced composition
method_b = Method("&12141616", bells=6, name="Double Bob")
# In a full composition, you would chain leads of 'method' and 'method_b'
# using transpositions to create the multi-part recursive structure.
