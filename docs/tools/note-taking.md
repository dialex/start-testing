# Note taking

> **tl;dr** SUMMARY_HERE

## Theory

We testers discover, gather and share information. 

If we keep that info only in our head, we are not helping the rest of the team, also we might forget! Keeping that information only in our head is both ephemeral and suboptimal.

> We often remember things in a way we want to, often to re-enforce a message or conform with our own thinking. I fall in to this trap often. Accurate notes and other captures can guard against this. Seeing the un-biased facts *can* help you to see the truth. Our minds are complex though and even facts can end up being twisted and bent to tell a story. We should try to avoid this bias where possible – the starting point to avoiding this bias is to acknowledge that we fall foul of it in the first place.

> It’s this notetaking (or other capture mechanism) that not only allows them to do good exploratory testing but also to do good explanations of that testing to others. Gives structure to Exploratory TEsting, makes it useful to other people.

> Testing is about discovering information, but that is of little use if you cannot articulate that information to the right audience, in the right way and with the right purpose.
>
> Good exploratory testing is searchable, auditable, insightful and can adhere to many compliance regulations. Good exploratory testing should be trusted.
>
> We can all find our own way of supporting our memory and our ability to explain what we tested. We can all use the tools we have at our disposal to aid in our explanation of our exploratory testing.





## Practice

### 👩‍💼👨‍💼 Meetings

You might find yourself in a meeting on behalf of your team. This often happens on mettings where your team doesn't make decisions, but needs to give information or take questions. You save them time and they expect a summary of the meeting. When taking notes in meetings focus on:

- **Facts**

  - *e.g. Ann was chosen as spokesperson for the design team*

- **Issues**
  - *e.g. Devs are blocked waiting for design mockups*

- **Decisions**
  - *e.g. Devs will focus on Epic 12 while they wait for 34's designs*

- **To do**

  - *e.g. Ask Ann: What's the progress on mockups? Is there a draft devs can use in the meantime?*

- **To clarify**
- *e.g. When are regression tests executed? Ask Gary or `#regressions` Slack channel*

Note taking is also useful to reduce rambling during meetings. Share your screen while you're taking notes and use the structure above to guide the conversation. This helps everyone visualise the topics of discussion and at the end of the meeting you'll have a summary for free.

> Tip: This [website](https://shoulditbeameeting.com/#/) let's you quickly decide if you really need that meeting. You can print the [flowchart](https://dannyroosevelt.com/ratethatmeeting-assets/should-it-be-a-meeting-flowchart.pdf) too. If your team has trouble ending meetings on time, you can use this [website](https://costie.io/) to show how much that meeting is currently costing.

### 🧭 Exploratory sessions

> TO EDIT: INTRO
>
> James and Jon Bach developed [Session-Based Test Management](http://www.satisfice.com/sbtm/) (SBTM) as a method for measuring and managing exploratory testing. 
>
> Exploratory testing is learning. Learning what is and what might be. Learning about our perception of the world, what's in front of us and how that influences the choices we make. It's learning together to build better products. It's creating an environment that enables a continuous "testing is learning" loop.
>
> The [following template](https://docs.google.com/document/d/1rKYmujVhUlNgfeYIBot12Z8E7S0Y_Z4pk5pefK7xO3g/edit?usp=sharing) provides triggers for an exploratory testing session. It's a way for you to experiment with your own structure. To help you tell a testing story – whether debriefing in real-time or asynchronously. I’ve had success with this template. It satisfies two audiences: One that just needs a summary and another who loves detail.
>
> I take notes like I'm creating a story for someone else to read. This includes a bit of show and tell. Great storytelling uses show more than tell. Sometimes it feels more natural to *tell* your notes what you’re doing. The *show* comes alive with screenshots, GIFs and video.
>
> As I explore I write notes imagining I'm taking someone through my actual process, steps and thoughts. Imagine saying it out loud and just type. ‪You can always edit later.
>
> Setup -> Explore -> Summarise

#### Prepare your TORCH

- Time: XXX.
- Oracles: XXX.
- ...

```
Think TORCH. Timer, Oracles, Risks, Consider, Heuristics.
Timer
How much time will you put aside for this session? 45 minutes, an hour and a half? Consider a sweet spot between a good enough amount of time to capture and share information that doesn’t overwhelm your audience. My preference is for 60 minutes max.
Oracles
Who and what will help you make useful decisions and conclusions about the information you discover? A person, a story in JIRA, previous experience, a comparable product in the market? Katrina Clokie shares useful info on Oracles. 
Risks
What risks would you like to learn about? Are they related to data, performance, security, functionality? Mark Winteringham and Dan Ashby share some thoughts in this handy video. 
Consider
What questions do you want to explore? Try asking at least one question starting with “What”, “Where”, “When”, “Why,” “Who” and “How”.
Heuristics
What triggers will prompt you during your session? The Heuristics Cheat Sheet and TestSphere are incredible resources.
```

#### KIIQ exploring

I group discoveries into four categories: Issues, Questions, Ideas and Praise (PQIP).

- Kudos
- Ideas
- Issues
- Questions

#### Bring PROOF

In addition to walking through the session sheet, we use an agenda summarized by the acronym “PROOF”:

- Past What happened during the session?
- Results What was achieved during the session?
- Obstacles What got in the way of good testing?
- Outlook What still needs to be done?
- Feelings How does the tester feel about all this?



[ALL TOGETHER: example of Setup/Explore/Debried template, guided by TORCH](https://club.ministryoftesting.com/t/examples-of-time-boxed-note-taking-sessions/12760)



### User testing

It's important to note that we 

always

 work on user tests in pairs; one moderator and one observer. The observer's notes are typically more useful and detailed than the moderator's whose main task is guiding participant through the site and exposing relevant issues. That said, at Webcredible both the moderator and observer take notes when we run user testing. Mostly quotes from participants which helps a lot with writing the report and producing a highlight video afterwards. We often write down the time stamp if it's a really good quote to find it easily in the recording. In addition to what the participants say and do, we also write down immediately apparent solutions and recommendations. These might not always be the right solutions but it's the start of the problem solving process and important to do.

### How do we make sure the notes are useful?

- Organise the notes by participant and then again into themes
- Use shorthand or even sketches for quick scribbling
- Take a lot of notes in the first few sessions and use the following sessions to collect evidence for recurring issues
- Note down timestamps for recurring issues and good quotes
- Start with a list of tasks as section headings and write the notes under each task

### How do we use the notes after the tests?

There are some common steps we all go through. First, we go through the notes to categorise the information by participants and task. Secondly, we analyse the findings, either by comparing notes from differing sessions and finding the common issues or extracting the key points. Lastly, we use the notes as a reference during writing reports or debriefing with the clients. There are endless ways for taking notes in user testing sessions. It's important to try out different methods and find what works for you and the project at hand. For the moment, I have settled with Evernote on my iPad and highlighting the most important points after each session. If you want to learn more about user testing, we have a training course 

dedicated to the subject

. User testing is also one of our 

core services

 as a consultancy, so if you don't feel up to the task, get us involved!



### Tools

- Memory
- Pen and paper
- Text editor + screenshot tool
- Spreadsheet
- Record the screen + talk as you test
- Tool optimised for Exploratory Testing (i.e. [Rapid Reporter](http://testing.gershon.info/reporter/))
- Mind map
- Diagram

https://www.eviltester.com/2013/09/10-experiments-to-improve-your.html







## Teachers

- [Simon Tomes](https://www.qeek.co/author/VjuuLCMAACkH2iwj/simon-tomes)

## Sources

- [Session-Based Test Management](https://www.satisfice.com/download/session-based-test-management)
- [Three Digestible Diagrams to Describe Exploratory Testing](https://dojo.ministryoftesting.com/dojo/lessons/three-digestible-diagrams-to-describe-exploratory-testing)
- [A Handy Note-taking Template for Exploratory Testing](https://www.qeek.co/blog/a-handy-note-taking-template-for-exploratory-testing)
- [Explaining Exploratory Testing Relies On Good Notes](http://thesocialtester.co.uk/explaining-exploratory-testing-relies-on-good-notes/)
