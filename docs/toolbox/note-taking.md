# Note-taking

> **tl;dr** Your notes structure your thinking, expand your memory and share information across the team.

## Theory

We testers discover, gather and share information.

Keeping that information only inside your head is both ephemeral and ineffective. What you discover is of little use if you cannot communicate that information to the right audience, in a clear and engaging format.

When we recall things we often miss important details or we remember them in a way that reinforces our own thinking ([confirmation bias](/toolbox/biases.md)). Writing notes frequently during your testing sessions reduces this risk.

Moreover, note-taking is a skill that greatly improves your exploratory testing by giving it structure. Good exploratory testing debriefs are insightful, searchable and shareable.

Find your own way of supporting your memory and your ability to explain what you tested.

## Practice

There are many tools and processes at your disposal. Alan Richardson lists a few in this [article](https://www.eviltester.com/2013/09/10-experiments-to-improve-your.html):

- Memory
- Pen and paper
- Text editor + screenshot tool
- Spreadsheet
- Record the screen + talk as you test
- Tool optimised for Exploratory Testing _(i.e. [Rapid Reporter](http://testing.gershon.info/reporter/))_
- Diagram
- Mind map

As a starting point, you have the [Cornwell method](https://youtu.be/cfaZVfQgt0U?t=158), that requires a simple pen and paper. Draw a vertical line in a way that creates a sidebar with one third the width of the page. Use the bigger area to take notes and the sidebar to extract key findings from those notes. At the bottom of the page you can write a summary of the whole sheet. This is the _"vanilla"_ flavour of the method — you are encouraged to add your own _"toppings"_ to it! For example, Richard Bradshaw likes to [tag key findings with letters and icons](https://youtu.be/H0rFIQe4Chs).

### 👩‍💼👨‍💼 Meetings

You might find yourself in a meeting on behalf of your team. This often happens on meetings where your team doesn't make decisions, but needs to give information or take questions. You save them time and they expect a summary of the meeting. When taking notes in meetings focus on:

- **Facts**
  - _e.g. Ann was chosen as spokesperson for the design team_
- **Issues**
  - _e.g. Devs are blocked waiting for design mockups_
- **Decisions**
  - _e.g. Devs will focus on Epic 12 while they wait for 34's designs_
- **To do**
  - _e.g. Ask Ann: What's the progress on mockups? Is there a draft devs can use in the meantime?_
- **To clarify**
  - _e.g. When are regression tests executed? Ask Gary or `#regressions` Slack channel_

Note taking is also useful to reduce rambling during meetings. Share your screen while you're taking notes and use the structure above to guide the conversation. This helps everyone visualise the topics of discussion and at the end of the meeting you'll have a free summary.

> Tip: This [website](https://shoulditbeameeting.com/#/) let's you quickly decide if you really need that meeting. You can print the [flowchart](https://dannyroosevelt.com/ratethatmeeting-assets/should-it-be-a-meeting-flowchart.pdf) too. If your team has trouble ending meetings on time, you can use this [website](https://producthunt.com/posts/costie) to show how much that meeting is currently costing.

### 🧭 Exploratory sessions

[Exploratory testing](/roles/exploratory-tester.md) is composed of three main phases: setup, explore, debrief. If you apply your note-taking skills during the explore phase, the debrief becomes much easier and insightful.

> As I explore I take notes like I'm creating a story for someone else to read, taking them through my process and thoughts. Sometimes it feels more natural to _tell_ what you're doing. The _show_ comes alive with screenshots, GIFs and video.
>
> — [Simon Tomes](https://www.qeek.co/blog/a-handy-note-taking-template-for-exploratory-testing)

Simon Tomes shared [a template](https://docs.google.com/document/d/1rKYmujVhUlNgfeYIBot12Z8E7S0Y_Z4pk5pefK7xO3g) that provides structure and triggers for your exploratory testing sessions. As always, try it and tweak it to your taste. That document ([real example](https://docs.google.com/document/d/1tLovWr2aehnq-JRj1qzAXPv-7r8PdBSdx1uk-X5sr3c)) gives the reader not only a summary but also the details of the session.

While you explore, "[`KIIQ`](/toolbox/mnemonics.md)" taking notes focusing on four subjects:

- **K**udos: what you enjoyed doing or seeing in your exploration
- **I**deas: what you think could be done differently
- **I**ssues: what is wrong and needs to be fixed or discussed
- **Q**uestions: missing information or context that need follow-up

### 👀 User testing

When performing a user testing session it's helpful to have one facilitator and one observer. The observer is focused on taking notes, while the facilitator is guiding the user through the exercise and clarifying any doubts.

During the session, take notes that cover:

- **Quotes** from participants — including praise, criticism, doubts and suggestions
- **Issues** identified (and ideas on how to fix them)
- Timestamps of relevant moments (in case you're recording the session)

Tag user quotes with feelings, such as `#frustrated` `#surprised` `#pleased`.

Use shorthand or even sketches, to be faster or more accurate. After a few sessions, patterns tend to emerge, so take more notes in the first few sessions and use the following sessions to collect evidence for recurring issues.

When you finished all your sessions, write a single document that summarises what you learned. Include what your users felt, where they struggled, what they enjoyed, what they longed for, and list any bugs or issues found during those sessions.

## Teachers

- [Alan Richardson](https://www.eviltester.com/)
- [Simon Tomes](https://www.qeek.co/author/VjuuLCMAACkH2iwj/simon-tomes)

## Sources

- [Explaining Exploratory Testing Relies On Good Notes](http://thesocialtester.co.uk/explaining-exploratory-testing-relies-on-good-notes/)
- [Session-Based Test Management](https://www.satisfice.com/download/session-based-test-management)
- [Three Digestible Diagrams to Describe Exploratory Testing](https://dojo.ministryoftesting.com/dojo/lessons/three-digestible-diagrams-to-describe-exploratory-testing)
- [A Handy Note-taking Template for Exploratory Testing](https://www.qeek.co/blog/a-handy-note-taking-template-for-exploratory-testing)
- [10 Experiments to Improve Your Exploratory Testing Note Taking](https://club.ministryoftesting.com/t/10-days-of-note-taking-experimentation-start-mon-23rd/16981/20)
