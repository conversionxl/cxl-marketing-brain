---
type: project
status: active          # active | paused | done | archived
priority: P1            # P1 | P2 | P3
cadence: weekly         # weekly | monthly | quarterly: how often this project should move. /lint uses it.
next_action: "Add customer data to raw/voc/ and 5 to 8 URLs to raw/brand/urls.md"
tags: [marketing-brain]
---

# Marketing Brain

## Overview
A brand brain: four linked files that Claude reads before it writes anything customer-facing, so drafts come out on-brand and grounded in real customer language instead of generic. Built in the Marketing Brain workshop of the CXL AI Native Marketer cohort, then finished at home. Every later workshop, starting with Campaign Engine, reads it.

The brain:
- [[wiki/brand/icp|ICP]]: who buys, in their words
- [[wiki/brand/positioning-messaging|Positioning and messaging]]: where you stand and what you say
- [[wiki/brand/voice-guide|Voice guide]]: how you sound
- [[wiki/brand/vocabulary|Vocabulary]]: which words you use, and which you never use

## Goals
- All four files at `status: final`: every section filled or deliberately blank, no open (inferred) tags.
- A draft Claude writes from the brain passes the fluff lens in [[frameworks/brand-voice-guide|brand-voice-guide]] without heavy edits.

## Current status
As of YYYY-MM-DD: templates untouched.

## Key people
- 

## Open tasks

**Before the workshop**
- [ ] Customer data in `raw/voc/`: an export, reviews, support tickets, call notes, or survey answers (see `raw/voc/README.md`)
- [ ] Review page URLs in `raw/voc/review-urls.md` (optional)
- [ ] 5 to 8 URLs in `raw/brand/urls.md`
- [ ] A few on-brand and off-brand samples in `raw/brand/on-brand/` and `raw/brand/off-brand/`
- [ ] Existing brand or style guides in `raw/brand/guides/` (nothing under NDA)
- [ ] Surveys, user research, interview notes and message-test results in `raw/voc/research/`
- [ ] Strategy docs (a pivot, a new market or product) and internal positioning or messaging docs in `raw/strategy/`
- [ ] Connect the tools that hold live data, if you have them: store or payments, CRM, GA4, docs (Notion, ClickUp, Asana, Google Drive), social and email. See `frameworks/live-data-and-research.md`

**Exercises**
- [ ] Exercise 1, ICP: run `/icp-dossier` → [[wiki/brand/icp|ICP]] and `outputs/icp-dossier.html`
- [ ] Exercise 2, positioning and messaging: run `/positioning-messaging` → [[wiki/brand/positioning-messaging|Positioning and messaging]]
- [ ] Exercise 3, brand voice: run `/brand-voice` → [[wiki/brand/voice-guide|Voice guide]] and [[wiki/brand/vocabulary|Vocabulary]]
- [ ] Optional: ask Claude to "build an example campaign from my ICP" → `outputs/campaign.html`

**Iterating**
- The `.md` files in `wiki/brand/` are the brain; the pages in `outputs/` are views of them. Edit a `.md` directly, or ask Claude to change it ("in @wiki/brand/icp.md, cut the third pain"). The page updates from it. After hand edits, run `/sync`.

**Take home**
- [ ] ICP: add more customer data, move up a stage, resolve every open tag
- [ ] Positioning and messaging: test alternatives and differentiators against real sales conversations; add proof, never invent it
- [ ] Voice: write your own this-not-that pairs from real sentences

## Decisions
- YYYY-MM-DD: decision and why

## Links and sources
- Frameworks: [[frameworks/positioning-messaging-hub|Positioning and messaging hub]], [[frameworks/brand-voice-guide|Brand voice guide]], [[frameworks/vocabulary|Vocabulary]]
- Inputs: `raw/voc/` (with `research/` and `live/`), `raw/brand/`, `raw/strategy/`, `raw/performance/`
- Research and live data: [[frameworks/live-data-and-research|Live data and research]]
- Outputs: `outputs/icp-dossier.html`, `outputs/campaign.html` (generated)
