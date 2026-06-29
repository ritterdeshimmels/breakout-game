# 💎 Gem Dungeon Breakout

> **Vibe-coded in ~20 minutes using [Claude Code](https://claude.ai/code) — zero manual coding.**

🎮 **[Play it live on Vercel →](https://breakout-game-ritterdeshimmels-projects.vercel.app)**

---

![Gem Dungeon Breakout](https://breakout-game-ritterdeshimmels-projects.vercel.app/assets/gems-spritesheet.png)

---

## 🤖 How it was built (the vibe coding story)

This entire game was built in a single AI session with **Claude Code** — no manual code was written. Here's what happened step by step:

1. **"Build me a breakout game"** — Claude set up the project structure and Canvas game loop
2. **Asset hunt** — Claude scanned `~/Downloads/Legacy Collection/` (a free pixel art pack already on the machine) and found gem sprites, explosion animations and hit effects
3. **Pixel analysis** — Claude decoded the PNG spritesheets raw pixel data to figure out the exact tile coordinates (color positions, row offsets) without any external tools
4. **Game logic** — Physics, collision detection, level design, power-ups, combo system — all generated in one shot
5. **Sound** — Web Audio API synth sounds, no audio files needed
6. **Deploy** — GitHub push + Vercel deployment, all via API calls from the terminal

Total time: **~20 minutes** from blank folder to live URL.

---

## 🎨 Assets

All pixel art is from the **[Ansimuz Legacy Collection](https://ansimuz.itch.io/warped-caves)** — free assets released by [@ansimuz](https://ansimuz.itch.io).

| Asset | Used for |
|---|---|
| `gems-spritesheet.png` | Breakout bricks — 6 colors × 3 damage states (16×16 tiles) |
| `explosion.png` | Brick destruction animation (8 frames × 48×48 px) |
| `hit.png` | Hit sparkle effect (3 frames × 31×32 px) |

Claude found these by running `find ~/Downloads -name "*.png"` and visually inspecting each file — no asset pack was downloaded for this project.

---

## 🕹️ How to play

| Input | Action |
|---|---|
| `Mouse` / `← →` | Move paddle |
| `Space` / `Click` | Launch ball |
| `P` | Pause |

### Power-ups
| Icon | Effect |
|---|---|
| `W` | Wide paddle (8 seconds) |
| `M` | Multi-ball |
| `S` | Slow ball (6 seconds) |
| `♥` | Extra life |

---

## 🏗️ Tech stack

```
Single HTML file — no framework, no build step, no dependencies
├── HTML5 Canvas (2D rendering)
├── Vanilla JavaScript (~800 lines)
├── Web Audio API (synthesized SFX — no audio files)
└── localStorage (hi-score persistence)
```

- **5 levels** with increasing difficulty
- **6 gem colors**, each with 3 HP states (bright → cracked → critical)
- Screen shake, combo multiplier, particle effects
- Fully responsive — scales to any screen size
- Works offline after first load

---

## 🚀 Run locally

```bash
git clone https://github.com/ritterdeshimmels/breakout-game.git
cd breakout-game
./start.sh   # starts python3 http.server + opens browser
```

Or just open `index.html` via any local HTTP server.

---

## 📺 YouTube

This project was built live as a vibe coding demo.  
Subscribe for more AI-assisted dev sessions → **[[youtube.com/@SoufianeZahir] (https://youtube.com/@soufianezahir?si=MUXUzhxQCSS0opB_)](#)**

---

*Built with ❤️ and Claude Code · Assets by [Ansimuz](https://ansimuz.itch.io) (free)*
