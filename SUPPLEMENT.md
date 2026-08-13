# Supplementary Material

**A Family of Area-Delay Optimized Hardware Modulo Multipliers for CRYSTALS-Kyber**
D. Gorodecky, T. Sasao, L. Sousa

This file contains the material that does not fit within the 4-page limit of the
letter: the complexity analysis, the experimental platform and runtimes, the
verification procedure, the description of the `Standard` baseline, and the
complete post-place-and-route and power results.

\---

## 1\. Repository contents

|File|Content|
|-|-|
|`ASIC/ and FPGA/`|Synthesizable Verilog for all 50 designs, the `Standard` baseline and both references|
|`mult\_mod\_3329\_asic.xlsx`|Genus synthesis and Innovus post-PnR results: 3 libraries x 3 constraint modes, delay / cells / area / power|
|`mult\_mod\_3329\_cadence.xlsx`, `mult\_mod\_3329\_synopsys.xlsx`|Per-vendor synthesis summaries|
|`mult\_mod\_3329\_fpga.csv`|Vivado results: LUTs, FFs, DSPs, BRAMs, delay, Fmax, runtimes|
|`scripts/`|Truth-table generation, Espresso/ABC minimization, synthesis and implementation flows|

\---

## 2\. Complexity

Let the operands be `n` bits wide and the modulus `P`.

**Stage 1.** A partition `(i, j)` yields `ceil(n/i) \* ceil(n/j) = O(n^2/ij)`
sub-coders. Each is a truth table of `2^(i+j)` rows and `ceil(log2 P)` outputs,
so generation and minimization cost

```
O( (n^2 / ij) \* 2^(i+j) )
```

The two factors pull in opposite directions: enlarging the sub-vectors reduces
the *number* of Boolean functions quadratically, but enlarges *each* of them
exponentially. This bounds the useful partition range — beyond `i, j = 4` the
per-function growth dominates — and accounts for the area advantage of the 2x2
family reported in the letter. The largest function in the whole design set is
an 8-input, 12-output sub-coder of the 4x4 family (256 rows), which is why
Espresso exact minimization remains tractable throughout.

**Adder tree.** `O(n^2/ij)` operands of width `ceil(log2 P)`, hence depth
`O(log(n^2/ij))` and area `O((n^2/ij) \* log P)`.

**Stage 2.** The accumulated sum has a surplus of `O(log(n^2/ij))` bits above
`ceil(log2 P)`. Each fold consumes `g` surplus bits per group and produces a
`ceil(log2 P)`-bit residue, so the number of iterations is
`O(log\_g(n^2/ij))` — one or two for all instances considered here.

**Why this is not in the letter.** A formula stated without interpretation is of
little use, and a proper discussion requires deriving the cost of both stages and
relating it to the measured results. Note also that the analysis is parametric in
`n` and `P` for generality; the letter itself treats the single case
`n = 12, P = 3329`.

**Why a per-instance analysis is not given.** The 48 architectures differ in
adder-tree organisation, fold placement and minimization regime, not in
asymptotic cost. Their differences are constant-factor effects that depend on the
cell library and the synthesis tool, which is precisely what the experimental
section measures directly.

\---

## 3\. Experimental platform

|||
|-|-|
|CPU|AMD Ryzen Threadripper 3970X, 32 cores @ 3.7 GHz|
|RAM|128 GB DDR4-3200 CL16|
|Motherboard|MSI TRX40 PRO 10G|
|OS|CentOS 7.8|
|Scripting|Anaconda3 (Python 3)|
|ASIC synthesis|Cadence Genus 21.15, Synopsys Design Compiler U-2022.12|
|ASIC place \& route|Cadence Innovus|
|FPGA|Xilinx Vivado 2022.2, Kintex-7 `xc7k70tfbg484-3`|
|Minimization|Espresso (exact two-level), ABC (`fpga -K k`, k in {3,5,6})|

Single machine; no cluster or distributed flow.

\---

## 4\. Runtimes

**Generation and minimization.** Truth-table generation for a complete family
(9 to 36 sub-coders) takes under one second. Espresso exact minimization and ABC
`fpga -K k` decomposition complete in a few seconds per family. This follows
directly from the problem size: each sub-coder has at most 8 input variables.

**FPGA implementation.** Measured over all 153 Vivado runs (51 designs x 3
strategies), from `mult\_mod\_3329\_fpga.csv`:

|Stage|Min|Median|Max|
|-|-|-|-|
|Synthesis|35 s|42 s|65 s|
|Implementation (place \& route)|55 s|62 s|72 s|
|**Total**|**98 s**|**116 s**|**139 s**|

**ASIC.** Genus synthesis and Innovus place \& route each complete within a few
minutes per design, for all 50 designs on all libraries, with no design-dependent
outliers.

The spread is under 20% around the median, and the references (`Yaman`,
`Standard`, `3x3\_arc\_1`) fall in the same range as the proposed architectures.
The area and delay gains reported in the letter are therefore obtained without
any increase in design-flow cost.

\---

## 5\. Verification

Functional correctness of every design was verified by RTL simulation against a
golden model of `A \* B mod 3329`, comparing obtained against expected results
over several hundred test vectors, including the corner cases of the reduction
path: operands producing the maximum accumulated sum, values falling in the
interval that requires a second fold, and values requiring the final conditional
subtraction.

\---

## 6\. The `Standard` reference

`Standard` is the single-line description

```verilog
assign R = (A \* B) % 3329;
```

given to each EDA tool with no constraints, pragmas or structural hints. The tool
infers a 12x12 multiplier followed by a remainder network. The internal structure
of that network is selected by proprietary vendor algorithms and is not
disclosed, which is why `Standard` serves as a black-box reference for the
quality of result obtainable with no algorithmic intervention, rather than as an
algorithmic competitor. Its synthesized structure differs between Cadence and
Synopsys, which is one reason the tool divergence discussed in the letter is most
pronounced on this design.

\---

## 7\. Resource profile: purely combinational

Across all 153 Vivado runs, every proposed design reports:

```
DSPs = 0    BRAMs = 0    FFs = 0
```

LUT counts range from 231 to 522 depending on family and strategy. The
architectures contain no multiplier primitive, no memory and no sequential
element: the entire computation, including modular reduction, is a combinational
network. This distinguishes them from recent Kyber multiplier and NTT
accelerators, which are resource-bound sequential blocks:

|Design|DSP|BRAM|Sequential|
|-|-|-|-|
|Bertels et al., FPL 2024 (modular multiplier)|1|0|pipelined butterfly|
|Guo et al., TCAS-II 2022 (full KEM)|2|3|yes|
|Nguyen et al., IEEE Access 2024 (NTT accelerator)|4|5|pipelined|
|Alhassani \& Benaissa, TCAS-I 2024 (polynomial mult.)|table-based RNS|—|pipelined butterfly|
|**This work**|**0**|**0**|**none**|

The cost of the proposed designs is therefore expressed directly in gates and
critical-path delay, and they port between ASIC and FPGA without modification.



J.\~Bertels, Q.\~Norga, and I.\~Verbauwhede, ``A Better Kyber Butterfly for FPGAs,'' \\emph{Proc.\\ 34th International Conference on Field-Programmable Logic and Applications (FPL)}, 2024, pp.\~171--177.



W. Guo, S. Li and L. Kong, "An Efficient Implementation of KYBER," in IEEE Transactions on Circuits and Systems II: Express Briefs, vol. 69, no. 3, 2022, pp. 1562-1566. 



T. -H. Nguyen, B. Kieu-Do-Nguyen, C. -K. Pham and T. -T. Hoang, "High-Speed NTT Accelerator for CRYSTAL-Kyber and CRYSTAL-Dilithium," in IEEE Access, vol. 12, 2024, pp. 34918-34930.



A. Alhassani and M. Benaissa, "High-Speed Polynomials Multiplication HW Accelerator for CRYSTALS-Kyber," in IEEE Transactions on Circuits and Systems I: Regular Papers, vol. 71, no. 12, 2024, pp. 6105-6113.



\---

## 8\. Post-place-and-route results (ASIC)

`mult\_mod\_3329\_asic.xlsx` contains Innovus post-PnR results for all 50 designs on
**GSCL45NM** in all three constraint modes (columns prefixed `I\_`), alongside the
Genus synthesis results (prefixed `G\_`).

Under the 1 ns constraint:

|Design|Post-PnR delay (ns)|Post-PnR cells|Area (um^2)|
|-|-|-|-|
|`2x2\_arc\_4\_2` (proposed)|2.76|1128|3435|
|`Yaman`|2.69|1329|3590|
|`Standard`|4.95|1904|4502|
|`3x3\_arc\_1`|3.14|2476|6046|

Unconstrained (area-driven) mode: `2x2\_arc\_4\_4\_exact\_5\_lut` routes to 631 cells
against 780 for `Yaman`, 869 for `Standard` and 1661 for `3x3\_arc\_1`.

Routing preserves the synthesis-level ranking. The proposed 2x2 instances
dominate both `Standard` and `3x3\_arc\_1` on delay and cell count simultaneously,
and match `Yaman`'s delay with 15% fewer cells.

**Coverage.** Post-PnR data is available for the Cadence flow only: we hold a
license for Synopsys Design Compiler but not for IC Compiler. Reporting post-PnR
for one vendor and synthesis for the other would make the vendor comparison in
Fig. 2 of the letter inconsistent, so the letter reports synthesis for both.

The `Status` column marks one `INNOVUS\_FAIL` (a single design under the 10 ns
constraint) and `GENUS\_ONLY` for the 28 nm industrial library, which is supplied
without the physical views required for place and route.

\---

## 9\. Power

Total power is reported in `mult\_mod\_3329\_asic.xlsx` for both the synthesis
(`G\_Total\_Power\_mW`) and post-PnR (`I\_Total\_Power\_mW`) stages, for every design,
library and constraint mode. Values are strongly constraint-dependent — on
GSCL45NM they range from 0.013 mW unconstrained to 15.8 mW post-PnR under the
1 ns constraint — which is why power is characterized here rather than summarized
in the letter.

\---

## 10\. Naming convention

* `<i>x<j>` — partitioning class: operand `A` split into `12/i` sub-vectors of
width `i`, operand `B` into `12/j` sub-vectors of width `j`.
* `arc\_<n>` (and `arc\_<n>\_<m>`) — Stage-2 variant: the group width `g` used to
fold the surplus bits, the point at which folding is inserted into the adder
tree, and the parallelisation scheme.
* `\_st`, `\_exact` — Espresso exact two-level minimization of the sub-coders.
* `\_3lut`, `\_5lut`, `\_6lut` — ABC `fpga -K k` bounded-fan-in decomposition,
`k = 3, 5, 6`.
* `\_aig` — AIG-based decomposition.

The `\_klut` suffix names the *decomposition target*, not the deployment target:
the result is a technology-independent multi-level network of k-input blocks.
This is why `\_5lut` and `\_6lut` frequently win on ASIC, where standard-cell
libraries contain composite gates that absorb 5- and 6-input blocks in a single
cell, while `\_3lut` wins by a small margin on the Kintex-7.

