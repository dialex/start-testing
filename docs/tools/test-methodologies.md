# Test Methodologies

> **tl;dr** SUMMARY_HERE

## Theory



### Acceptance test

> QA and Business analysts should take the stories chosen during the planning meeting, and turn them into automated acceptance tests. Programmers use the acceptance tests as requirements. They read those tests to find out what their stories are *really* supposed to do.
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

### Unit vs Acceptance

> recommended by the Agile disciplines. Unit tests, which are written by programmers, for programmers, in a programming language. And acceptance tests, which are written by business people (and QA), for business people, in a high level specification language
>
> It’s true that the two streams of tests test the same things. Indeed, that’s the point. Unit tests are written by programers to ensure that the code does what they intend it to do. Acceptance tests are written by business people (and QA) to make sure the code does what *they* intend it to do. The two together make sure that the business people and programmers intend the same thing.
>
> programmers must go to great lengths to decouple the components of the system in order to test them independently. Therefore unit tests seldom exercise large integrated chunks of the system. Acceptance tests operate on much larger integrated chunks of the system. (black box)
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

### ATDD

> Programmers start a story by executing the acceptance tests for that story, and noting what fails. Then they write unit tests that force them to write the code that will make some small portion of the acceptance tests pass. They keep running the acceptance tests to see how much of their story is working, and they keep adding unit tests and production code until all the acceptance tests pass.
>
> At the end of the iteration all the acceptance tests (and unit tests) are passing. There is nothing left for QA to do. There is no hand-off to QA to make sure the system does what it is supposed to. The acceptance tests already prove that the system is working.
>
> This does not mean that QA does not put their hands on the keyboards and their eyes on the screen. They do! But they don’t follow manual test scripts! Rather, they perform *exploratory testing*. They get *creative*. They do what QA people are really good at—they find new and interesting ways to break the system. They uncover unspecified, or under-specified areas of the system.
>
> **So, in short, the business specifies the system with automated acceptance tests. Programmers run those tests to see what unit tests need to be written. The unit tests force them to write production code that passes both tests. In the end, all the tests pass. In the middle of the iteration, QA changes from writing automated tests, to exploratory testing.**
>
> -- https://sites.google.com/site/unclebobconsultingllc/tdd-with-acceptance-tests-and-unit-tests

## Practice

## Teachers

- [XXX](YYY)

## Sources

- [XXX](YYY)
