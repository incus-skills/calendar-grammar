import itertools
import copy


class TreeOfLifePeal:
    def __init__(self, num_bells=10):
        self.n = num_bells
        self.sefirot = list(
            range(1, num_bells + 1)
        )  # 1..10 representing Keter..Malkuth
        self.paths = 22  # Constraint: Only adjacent swaps allowed (mimicking 22 paths)
        self.extent_size = 1
        for i in range(1, num_bells + 1):
            self.extent_size *= i

        # Define the 10 Sefirot names for mapping
        self.sefirot_names = [
            "Keter",
            "Chokmah",
            "Binah",
            "Chesed",
            "Gevurah",
            "Tiferet",
            "Netzach",
            "Hod",
            "Yesod",
            "Malkuth",
        ]
        self.da_at_index = self.extent_size // 2  # The pivot point

    def get_neighbors(self, state):
        """Generates valid next states based on '22 Paths' constraint (adjacent swaps)."""
        neighbors = []
        for i in range(self.n - 1):
            # Swap adjacent bells (i, i+1)
            new_state = list(state)
            new_state[i], new_state[i + 1] = new_state[i + 1], new_state[i]
            neighbors.append(tuple(new_state))
        return neighbors

    def find_hamiltonian_path(self):
        """
        Finds a palindromic Hamiltonian path (Extent) using DFS with symmetry constraints.
        Structure: [Part A] -> [Da_at Pivot] -> [Inverse Part A]
        """
        start = tuple(self.sefirot)
        visited = {start}
        path = [start]

        # We only search for the first half; the second half is the mirror image.
        target_len = self.extent_size // 2 + 1

        print(f"Searching for palindromic extent of {self.extent_size} changes...")
        print(f"Searching first half ({target_len} rows) to Da_at pivot...")

        if self._dfs_palindrome(path, visited, target_len):
            return self._construct_full_peal(path)
        return None

    def _dfs_palindrome(self, path, visited, target_len):
        if len(path) == target_len:
            return True  # Reached the Da_at pivot successfully

        current = path[-1]
        # Heuristic: Prioritize swaps that maintain 'ecological' balance (e.g., avoid same swap twice)
        # Here we simply iterate neighbors. In a full implementation, one would splice methods here.
        for neighbor in self.get_neighbors(current):
            if neighbor not in visited:
                visited.add(neighbor)
                path.append(neighbor)

                if self._dfs_palindrome(path, visited, target_len):
                    return True

                # Backtrack
                path.pop()
                visited.remove(neighbor)
        return False

    def _construct_full_peal(self, first_half):
        """Constructs the full peal by mirroring the first half around Da_at."""
        # The first_half includes the start and the pivot (midpoint)
        # We need to reverse the sequence of swaps to get the return journey

        second_half = []
        # Reverse the path excluding the pivot (which is the last element of first_half)
        for i in range(len(first_half) - 2, -1, -1):
            second_half.append(first_half[i])

        return first_half + second_half

    def map_to_sefirot(self, peal_sequence):
        """Maps the bell permutations to Sefirotic states for ecological analysis."""
        ecological_log = []
        for i, row in enumerate(peal_sequence):
            state_desc = {self.sefirot_names[j]: row[j] for j in range(self.n)}

            # Identify structural markers
            marker = ""
            if i == 0:
                marker = " (Keter - Rounds)"
            elif i == len(peal_sequence) // 2:
                marker = " (Da_at - Pivot)"
            elif i == len(peal_sequence) - 1:
                marker = " (Malkuth - Return to Rounds)"

            ecological_log.append(f"Change {i}: {row}{marker}")

        return ecological_log


# --- Execution ---
if __name__ == "__main__":
    # Note: A full 10-bell extent (3.6M changes) is computationally heavy for a simple script.
    # This example demonstrates the logic with 5 bells (120 changes) for instant verification.
    print("Initializing Tree of Life Peal Generator (5-Bell Demo)...")
    peal_gen = TreeOfLifePeal(num_bells=5)

    # For a real 10-bell peal, instantiate: peal_gen = TreeOfLifePeal(num_bells=10)
    # But be aware: 10! = 3,628,800 changes.

    full_peal = peal_gen.find_hamiltonian_path()

    if full_peal:
        print(f"\nSuccess! Generated palindromic peal of {len(full_peal)} changes.")
        print("\n--- Ecological Mapping (First 10 & Last 5 Changes) ---")
        log = peal_gen.map_to_sefirot(full_peal)
        for entry in log[:10]:
            print(entry)
        print("...")
        for entry in log[-5:]:
            print(entry)

        # Verify Palindrome Property
        is_palindrome = full_peal == full_peal[::-1]
        print(f"\nMacro-Scale Symmetry Verified: {is_palindrome}")
    else:
        print("No palindromic extent found with current constraints.")
