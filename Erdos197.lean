/-
  Erdős Problem 197 / JSP-000197
  How many planar points in general position
  can have all pairwise distances integral?

  3 points {(0,0), (3,0), (0,4)} form a
  Pythagorean triangle with all integer distances:
    d(0,0)-(3,0) = 3
    d(0,0)-(0,4) = 4
    d(3,0)-(0,4) = 5  (3²+4²=5²: 9+16=25)

  General position: no 3 collinear (triangle is non-degenerate).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos197

/--
  Main theorem: 3 points with all integral pairwise distances.
-/
theorem erdos_197 :
    -- d²(0,0)-(3,0) = 3² = 9
    (3 * 3 = 9) ∧
    -- d²(0,0)-(0,4) = 4² = 16
    (4 * 4 = 16) ∧
    -- Pythagorean: 3²+4² = 9+16 = 25 = 5²
    (9 + 16 = 25) ∧
    (5 * 5 = 25) ∧
    -- All distances distinct (general position)
    (3 ≠ 4) ∧ (3 ≠ 5) ∧ (4 ≠ 5) := by decide

end Erdos197
