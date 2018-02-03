# Specification By Example (SBE)

> **tl;dr** A practice that translates business goals into scenarios that can be tested and automated.

What you will be using:

- User Stories (⭐️ yellow) are written by POs/BAs and summarise the desired functionality
- Examples (✅ green) detail a scenario that our feature must support
- Rules (🔵 blue) summarise a group of examples or describe a constraint
- Questions (🔴 red) are doubts that nobody in the conversation can answer -- if not answered, then assume

**How it [works](https://meXXXXXXdium.com/@mattwXXXXXXoducing-example-mapping-42ccd15f8adf)**:

1. Pick a story ⭐️ to discuss and place it at the top of the table.
1. Write the known acceptance criteria 🔵 and put them beneath the story ⭐️.
1. For each rule, write at least one example ✅ to illustrate it. Put the ✅ under the respective 🔵.
1. During the discussion, you might uncover questions 🔴 that nobody in the room can answer. Put them aside.
1. Continue until the scope of the story is clear (or time runs out).
1. Find out who would be suitable to answer the questions 🔴 raised.

**Exercises**: [Story](https://medium.com/@mattwynne/introducing-example-mapping-42ccd15f8adf) / [Rules vs Examples](https://speakerdeck.com/mattwynne/rules-vs-examples-bddx-london-2014)

- The process is visual and gives you fast feedback
- Invite the three amigos: a developer, a tester and a product person
- Time-box each story to 25 minutes; Run it every other day
- For distributed teams: use GDocs, or a coloured spreadsheet, or a mind map
- Focus on getting clarity and reducing the unknowns -- leave the Gherkin scenarios for later
- Reach a shared understanding of what it will take for the story to be done
- Let the PO focus on rules/examples; then the Tester drafts the Gherkin scenarios and asks for a review
- Use [thumb-vote](https://www.conferencesthatwork.com/index.php/event-design/2012/06/testing-consensus-using-roman-voting/) to decide if the story is detailed enough for development

**How it should [flow](https://blog.red-badger.com/blog/2012/07/31/what-is-specification-by-example)**:

1. Deriving scope from goals
1. Specifying collaboratively
1. Illustrating specifications using examples
1. Refining the specifications
1. Automating validation without changing the specifications
1. Validating the system frequently
1. Evolving living documentation

Tips:

- What we want to achieve? Why and how will we measure it?
- Who are the relevant stakeholders?
- How can they help the project achieve its goals?
- Specify stories in a (3-5 pax) group -> shared understanding, diff perspectives `#WisdomOfCrowds`
- Examples: - assumptions, - risk, + alignment + coverage
- Good example: self-explanatory, focused on one functionality, domain language, measurable
- Refine examples to describe a feature unambiguously but not necessarily cover all cases
- Key examples are called Acceptance Criteria (AC), Acceptance/Functional Tests
- Too many examples compromise automation, maintainability and readability (live doc)
- Living doc is in sync with code and anyone in the team can understand it
- Unit tests are technology facing; the AC are Business facing; both support the team and are fully automated

## Author

- [Gojko Adzic](https://gojko.net/)

## Sources

- [What is Specification by Example](https://blog.red-badger.com/blog/2012/07/31/what-is-specification-by-example)
- [Introducing Example Mapping](https://medium.com/@mattwynne/introducing-example-mapping-42ccd15f8adf)
