# Specification By Example (SBE)

> **tl;dr** A practice to translate business goals into scenarios that can be tested and automated.

## Notes

Patterns followed by companies that continuously deliver valuable software:

1. Deriving scope from goals
2. Specifying collaboratively
3. Illustrating specifications using examples
4. Refining the specifications
5. Automating validation without changing the specifications
6. Validating the system frequently
7. Evolving living documentation

Tips:

- What we want to achieve? Why and how will we measure it?
- Who are the relevant stakeholders?
- How can they help the project achieve its goals?
- Specify stories in a (3-5 pax) group -> shared understanding, diff perspectives `#WisdomOfCrowds`
- Examples: -assumptions, -risk, +alignment +coverage
- Good example: self-explanatory, focused on one functionality, domain language, measurable
- Refine examples to describe a feature unambiguously but not necessarily cover all cases
- Key examples are called Acceptance Criteria, Acceptance/Functional Tests
- Too many examples compromise automation, maintainability and readability (live doc)
- Living doc is in sync with code and anyone in the team can understand it
- Unit tests are technology facing. The acceptance criteria from SBE are Business facing. Both support the team and are fully automated.

## Author

- [Gojko Adzic](https://gojko.net/)

## Sources

- [What is Specification by Example](https://blog.red-badger.com/blog/2012/07/31/what-is-specification-by-example)
