---
type: brand
status: draft           # template | draft | final
last_updated: "2026-09-27"
sources:                # files in raw/voc/ and review URLs this was built from
  - raw/voc/example/customers.csv
  - raw/voc/example/reviews.md
  - raw/voc/example/support-tickets.md
  - raw/voc/example/sales-call-notes.md
tags: [marketing-brain, icp, example]
---

# ICP (example: Acme Deals)

<!-- Example run of /icp-dossier on Acme Deals, a fictional lifetime-deal marketplace. Built from raw/voc/example/ only. Method: .claude/skills/icp-synthesis/. Any line not traceable to raw/voc/example/ is tagged (inferred). -->

## The rich avatar

- **Name:** Solo Agency Jordan. Modelled on Jordan Reyes (BrightPath Agency), the top customer by spend, with Marisol Vega (Delta Creative) and Tomas Becker (North Loop Digital) as the same person twice more.
- **Role:** Founder, owner, or managing director who is also the whole delivery team. "I'm a team of one wearing nine hats" (Marisol Vega, reviews.md). Job titles in the cohort: Founder, Owner / Operator, Managing Director, Freelance Consultant, Co-founder (customers.csv).
- **Company type and size:** Marketing agency or independent consultancy, 1 to 5 people. All 6 customers in the avatar cohort are size 1-5; 5 are Marketing Agency, 1 is Consulting (customers.csv).
- **Business model:** Client retainers. Jordan runs 8 active client retainers (sales-call-notes.md, reviews.md); Marisol has "12-ish clients" (sales-call-notes.md). The tools are delivered to clients as part of the service: "Half my value to them is that I bring the tools so they don't have to go shopping" (Jordan Reyes, ticket #4902).
- **Why they buy, and buy again:** One payment instead of a monthly bill, so every tool widens the margin on retainers they already have. Jordan "Buys 2-3 deals a month, has for years. Doesn't evaluate much if the price is one-time" (sales-call-notes.md). Marisol "Decides fast" (sales-call-notes.md). Ben Ortiz buys "first and find the use case later if the deal is good enough" (reviews.md).
- **The outcome they are really buying:** Margin, and staying solo while looking bigger. "I'm not buying software, I'm buying margin" (Jordan Reyes, sales-call-notes.md). "My clients genuinely think I have a whole team behind me" (Tomas Becker, reviews.md). "The day I have to hire is the day my margin dies" (Jordan Reyes, sales-call-notes.md).
- **Share of customers / revenue:** The top 10% (Jordan Reyes and Marisol Vega, 2 of 18) drove 31.8% of revenue. The full avatar cohort (6 solo agency owners and consultants spending over $1,000) is 33% of customers, 74.0% of revenue ($37,380 of $50,481), and 75.1% of orders (154 of 205). Average lifetime spend $6,230 against $190 for one-and-done buyers (customers.csv, calculated 2026-09-27).

**Cross-validation against the calls.** Jordan on the call matches Jordan in the data: 1-5 person agency, founder, top spender, customer since 2021. One mismatch to resolve: the call says 2 to 3 deals a month "for years", but customers.csv shows 34 orders since 2021-03-11, which is about 1 a month even if the export was taken at the last signup date (2024-02-08). Either an order holds several deals, some purchases sit outside this export, or the call overstates it. Check before quoting a purchase frequency in copy.

## Segments below the avatar

| Segment | Who | Value | What moves them |
|---|---|---|---|
| **Solo agencies and consultants (the avatar)** | Jordan Reyes, Marisol Vega, Tomas Becker, Aisha Nelson, Ben Ortiz, Liam Walsh. Founders and operators of 1-5 person agencies or consultancies. | 6 customers, $37,380 (74.0%), 154 orders, average $6,230 | Margin, not hiring, reselling tools into client work. "Overhead is what kills small agencies and this is the opposite of overhead" (Jordan Reyes, reviews.md). |
| **The lone in-house marketer** | Priya Shah (Growth Lead, SaaS, 6-20), Sofia Marin (Marketing Manager, Ecommerce, 21-50), Derek Combs (Head of Demand Gen, SaaS, 51-200), Nadia Khoury (Performance Marketer, SaaS, 21-50). | 4 customers, $11,580 (22.9%), 41 orders, average $2,895 | Time, not price. "Not price-sensitive, time-sensitive" (Sofia Marin call, sales-call-notes.md). Tools that work on day one and kill the manual Monday report. Falls short of the avatar because they buy for their own job, not to resell. |
| **One-off project buyers** | Owen Pratt (Coaching), Hana Suzuki (Design), Carlos Mendez (SaaS engineer), Ruth Allen (Retail), Gabby Ross (Marketing Coordinator, SaaS). | 5 customers, $1,334 (2.6%), 7 orders | A single need. "used it once for a launch. Probably won't need it again until next year" (Owen Pratt, reviews.md). Motivation for the others is not in the data. |
| **Explorers** | Sam Okafor (Founder, Driftboard), Felix Braun (Student), Elena Cruz (Intern, BrightPath Agency). | 3 customers, $187 (0.4%), 3 orders | Price alone. "Grabbed it because it was cheap, haven't really dug in yet" (Sam Okafor, reviews.md). The call notes call Sam "a contrast segment". |

Elena Cruz is an intern at BrightPath Agency, Jordan Reyes's company. She may be buying on Jordan's behalf **(inferred)**; if so, BrightPath's true spend is $8,469.

## Their words (verbatim)

Avatar:

- "Honestly the lifetime deals are a cheat code for an agency. I buy the tool once, resell it into 8 client retainers, and pocket the difference every month. Overhead is what kills small agencies and this is the opposite of overhead." (Jordan Reyes, BrightPath Agency, reviews.md)
- "I'm not buying software, I'm buying margin. Every lifetime deal I resell into a retainer pays for itself in a month and prints after that." (Jordan Reyes, BrightPath Agency, sales-call-notes.md)
- "The day I have to hire is the day my margin dies." (Jordan Reyes, BrightPath Agency, sales-call-notes.md)
- "Can I rebrand the output and put it in front of my clients? Half my value to them is that I bring the tools so they don't have to go shopping." (Jordan Reyes, BrightPath Agency, support-tickets.md #4902)
- "I'm a team of one wearing nine hats. Every tool I don't have to pay monthly for is one less thing draining the account. I've probably bought 25+ deals and I'd buy 25 more." (Marisol Vega, Delta Creative, reviews.md)
- "If it saves me from hiring, it's worth it. I'd rather own 30 tools than manage one person." (Marisol Vega, Delta Creative, sales-call-notes.md)
- "If I buy this once can I use it for all my client accounts or is it one per seat? I run everything under my one login to keep costs down." (Marisol Vega, Delta Creative, support-tickets.md #4821)
- "My clients genuinely think I have a whole team behind me. It's me and a stack of tools I picked up here. Punching way above my weight and I like it that way." (Tomas Becker, North Loop Digital, reviews.md)
- "Every dollar of overhead I don't spend is a dollar of margin. Simple as that. The only thing I want is to know which of these I'll actually still use in 6 months." (Aisha Nelson, Scaleside, reviews.md)
- "I buy first and find the use case later if the deal is good enough. Sounds reckless but the math works when it's one payment." (Ben Ortiz, CraftFunnel, reviews.md)

Lone in-house marketer:

- "Needs to work on day one. I do not have time to learn another dashboard or sit through a webinar to get value." (Priya Shah, Orbit Growth, reviews.md)
- "Signed up an hour ago, where do I start? I don't want to watch a 40 minute course, I just need the thing to do the thing." (Priya Shah, Orbit Growth, support-tickets.md #5099)
- "Monday is reporting hell. I'm in spreadsheets till noon and then someone asks why a number changed." (Sofia Marin, BrightNest, sales-call-notes.md)
- "I rebuild the same Monday report by hand and it eats half my morning." (Sofia Marin, BrightNest, support-tickets.md #5010)
- "Trying to pull spend from two platforms into one view. Right now I copy/paste between tabs and it's a mess." (Nadia Khoury, Verdant Apps, support-tickets.md #5044)
- "Need a proper invoice for accounting and to confirm this is a one-time charge, not a subscription that renews." (Derek Combs, PayloadHQ, support-tickets.md #5130)

## Desires

Avatar:

- Wider margin on the retainers they already have: tools that "pays for itself in a month and prints after that" (Jordan Reyes, sales-call-notes.md).
- To stay solo: "I'd rather own 30 tools than manage one person" (Marisol Vega, sales-call-notes.md).
- To look like a bigger shop than they are (Tomas Becker, reviews.md).
- Tools they can rebrand and resell: "tools he can put a logo on and resell. Reliability over features" (Jordan Reyes, sales-call-notes.md; ticket #4902).
- One license that covers every client account (Marisol Vega, ticket #4821).
- Confidence they will still use a tool in 6 months (Aisha Nelson, reviews.md; Marisol Vega, sales-call-notes.md).

Lone in-house marketer:

- Value on day one, no course or webinar first (Priya Shah, reviews.md and ticket #5099).
- "speed to a clean number she can defend" (Sofia Marin, sales-call-notes.md).
- Paperwork that proves the charge is one-time (Derek Combs, ticket #5130).

## Pains

Avatar:

- Overhead and the prospect of hiring: "Overhead is what kills small agencies" (Jordan Reyes, reviews.md); "The day I have to hire is the day my margin dies" (sales-call-notes.md).
- Monthly subscriptions: "one less thing draining the account" (Marisol Vega, reviews.md).
- Not knowing whether a license covers all clients or one seat (Marisol Vega, ticket #4821).
- Buying tools that go unused after a few months (Aisha Nelson, reviews.md) **(inferred)**: she states the desire to know, not a past regret.

Lone in-house marketer:

- Manual weekly reporting: "Monday is reporting hell" (Sofia Marin, sales-call-notes.md).
- Stitching data from several platforms by hand (Nadia Khoury, reviews.md and ticket #5044).
- Learning curves and onboarding courses (Priya Shah, ticket #5099).
- Fear that a purchase is a renewing subscription (Derek Combs, ticket #5130).

## Sources

- `raw/voc/example/customers.csv`: 18 customers, with spend, order count, title, company, size, industry, and a notes field (11 filled). Confidence tier: CRM export for every field. No public enrichment: the data is fictional (`.example` domains), so step 3 of the method was skipped.
- `raw/voc/example/reviews.md`: 10 reviews.
- `raw/voc/example/support-tickets.md`: 6 tickets.
- `raw/voc/example/sales-call-notes.md`: 4 call notes.
- `raw/voc/review-urls.md`: empty, no review pages scraped.

All customer data is fictional, from Nick Christensen's ship-icp-ads-automate-monitoring (MIT).

## Open (inferred) tags

- Elena Cruz may be buying on Jordan Reyes's behalf, making BrightPath's true spend $8,469.
- Aisha Nelson's pain is past tools going unused; the data states only the wish to know in advance.

Also unresolved, not tagged because it is a data conflict rather than an inference: Jordan's "2-3 deals a month" (call) against about 1 order a month (customers.csv).
