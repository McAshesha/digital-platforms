<h1 align="center">
  🖥️ Digital Platforms — Deep Robotics @ NSU
</h1>

<p align="center">
  <em>Hands‑on guide &amp; assignment solutions for CdM8 assembly and Logisim digital‑design adventures in the Deep Robotics curriculum at Novosibirsk&nbsp;State&nbsp;University.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/status-%F0%9F%9A%80%20maintenance-yellow?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/language-Assembly%20%28CdM8%29-purple?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/language-Logisim-lightgrey?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/university-NSU-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/track-Deep&nbsp;Robotics-critical?style=for-the-badge"/>
</p>

---

## Table of Contents

1. ❓ [Why this repo?](#why-this-repo)
2. 🗂️ [Repository layout](#repository-layout)
3. 🚀 [Getting started](#getting-started)
4. 📚 [Semester breakdown](#semester-breakdown)
5. 🛠️ [Key resources](#key-resources)
6. 📄 [License](#license)

---

<h2 id="why-this-repo">❓ Why this repo?</h2>

> *“Digital Platforms is where low‑level code meets hardware reality.”*
> — someone in our micro‑controller lab, probably.

* 🎯 **Single source of truth.** Lecture slides, Logisim schematics, and all graded homeworks live in one place.
* 🧑‍💻 **Real student code.** Browse working CdM8 programs that actually ran on the university simulator.
* 🏗️ **Step‑by‑step evolution.** From first `LD` instruction to complete VGA controller — trace every milestone commit.
* 🤖 **Deep Robotics flavour.** Examples target robotics control loops, sensor buses, and FPGA prototypes.

---

<h2 id="repository-layout">🗂️ Repository layout</h2>

```text
DigitalPlatforms/
├── 1_sem/                  # semester 1 — CdM8 assembly
│   ├── T00.L1e.01/
│   │   ├── solution.asm    # Task 1 solution
│   │   └── task.pdf        # Task description
│   ├── T01.L2e.02/
│   └── …/
├── 2_sem/                  # semester 2 — Logisim circuits
│   ├── labs/
│   │   ├── fsm_traffic_light.circ  # finite‑state machine example
│   │   └── alu.circ                # 8‑bit ALU
│   ├── projects/
│   │   └── mini_cpu.circ           # pipelined CdM8 subset
│   └── lib/                        # custom Logisim libraries (JARs)
├── instruction-set.pdf            # original CdM8 ISA reference
├── mod_instruction_set.md         # friendlier, annotated ISA cheatsheet
├── tanenbaum_AC.pdf               # Computer Architecture ebook
├── tome.pdf                       # Complete CdM8 assembler manual
├── screenshots/                   # demo GIFs & pictures
├── LICENSE
└── README.md                      # you’re reading it
```

---

<h2 id="getting-started">🚀 Getting started</h2>

### 0. Prerequisites

| Tool             | Tested version | Notes                                                                                  |
| ---------------- | -------------- | -------------------------------------------------------------------------------------- |
| **CocoIDE**      | `1.91`        | builds + runs CdM8 `.asm` programs                                                     |
| **Logisim**      | `3.8.0`        | [https://sourceforge.net/projects/circuit/](https://sourceforge.net/projects/circuit/) |

### 1. Clone the repo

```bash
git clone https://github.com/your-user/DigitalPlatforms.git
cd DigitalPlatforms
```

### 2. Assemble & run a CdM8 task

```bash
cd 1_sem/T00.L1e.01
cocoide solution.asm     # hit ▶️ inside the IDE to run
```

### 3. Launch a Logisim circuit

```bash
cd 2_sem/projects/mini_cpu
logisim mini_cpu.circ
```

Hit **🟥 Reset**, then **▶️ Run** & watch the waveform.

---

<h2 id="semester-breakdown">📚 Semester breakdown</h2>

| Semester | Focus                                  | Highlights                                                 |
| -------- | -------------------------------------- | ---------------------------------------------------------- |
| **1**    | Embedded programming with **CdM8 ASM** | addressing modes 🔢 • stack discipline 📚 • IRQ handling ⚡ |
| **2**    | Digital design in **Logisim**          | FSMs ↔ datapaths 🔄 • pipelining 🏎️ • VGA controller 🖥️  |

---

<h2 id="key-resources">🛠️ Key resources</h2>

| Topic                 | Link                                                     | Why it matters                  |
| --------------------- | -------------------------------------------------------- | ------------------------------- |
| CdM8 ISA              | [`PDF`](instruction-set.pdf)                             | Official opcode reference       |
| Annotated ISA         | [`MD`](mod_instruction_set.md)                           | Human‑friendly cheatsheet       |
| cdm-devkit            | [`GitHub`](https://github.com/cdm-processors/cdm-devkit) | IDE / simulator for CdM8        |
| Logisim docs          | [`Docs`](https://lapidedit.github.io/logisim-fork/)      | Gate library & simulation guide |
| Tanenbaum Book        | [`Book`](tanenbaum_AC.pdf)                               | Architecture concepts           |
| CdM8 Assembler Manual | [`Tome`](tome.pdf)                                       | In‑depth assembler tutorial     |

---

<h2 id="license">📄 License</h2>

This repository is released under the **GNU License**.
See [`LICENSE`](LICENSE) for the full text.

---

> *Spotted a race condition or have a smarter ALU design? Open an issue, drop a PR, or just ping me on Telegram!* ✨
