# Design Doc Template

## Owners

- Someone - SDM
- Someone - SDE
- Someone - PM
- Someone - TPM

## Abstract

_A short summary of the project and a short (e.g. one sentence) summary of the solution. It helps to include specific technologies, patterns, or dependencies (e.g. DynamoDB, high-throughput caching layer, or dependencies). Send this out with the design review meeting invite to help people understand what it’s about._

## Problem Statement

_Describe the problem you are solving. This is important because the reviewer needs to know if this is the right problem to be solving and to be able to evaluate if the proposed solution solve this problem. Include important background context but keep it concise. This should be short but also provide enough context for someone from outside the team to review the design._

## Glossary of Terms

_ Every business has acronyms they use without thinking. List ALL acronyms here, even if you think your audience will know them._

## Tenets

_A numbered list of tenets pertaining to the design. Not every design choice needs to relate to a tenet; they should be “tie breakers” for decisions where there is no “right” answer. For example, “Robustness over performance” may be used if a system is mission critical and could help deciding whether to add extra latency or architecture to increase uptime or to remove a dependency to decrease latency, but also introduces a single point of failure._

## Statement of Scope

### In Scope
_A numbered list of what’s in scope for this document._

### Out of Scope
_A numbered list of items that are out of scope for this design document. It’s important to include details of out of scope items to demonstrate we thought about and made conscious decisions not to include. Don’t forget to include the details of why they are not being included._

### Requirements
_Put a summary of the technical requirements here. You may benefit from linking to a BRD if there is one._

### Success Criteria
_List of acceptance criteria when no additional work is needed and the document can be considered complete. Use metrics and measurable data to define when a project is successful._

### Business Intelligence Metrics
_The metrics and data schema that will be used to validate the success criteria above and perform long-term analysis._



# Solution

_Summarize the proposed solution. Focus on the most salient aspects, which will differ depending on the project. This section should be an expanded SWOT analysis against other considered options._

## Design diagram
_Include 1 or more diagrams to illustrate your solution. You can use diagramming tools such as DrawIo or PlantUML._

## State Boundaries
_How this design interacts with the state of the system. If an existing system has a lifecycle, this section would describe how the design interacts with each state._

## Solution Details
_Add more detail about your solution. What are failure scenarios and how will you handle them? Include the API definition if you are adding a new one and/or a DB schema if relevant._

### Justification

_Explain why you chose this solution and how it solves the requirements._

## Alternatives

_What else did you consider? What where the pros and cons of each? Timing and/or size of the solution can be included here if that is relevant to your choice. What are the reasons you made the decision you did? Some of these (or this section) could potentially be in the appendix for some designs._

## Release Process

_This section should prompt some of the questions that may answer if an MCM is required or not._

- Is this change manual or automated?
- Does this change modify existing Prod data?
- How could this thing go wrong?
- What’s the blast radius? Can we reduce this blast radius?
- How quickly can we revert this change? How do we revert the change?

## Risks & Mitigations

_This section should answer the “Weakness” and “Threat” part of the SWOT analysis._

## Security / Privacy

_What are the security concerns? What type of data is this system dealing with? What personal data does this deal with?? Is any free-form text used?_


## Accessibility / Globalization

_Are there any globalization concerns? Language issues we may run into?_

## Metrics / Alarms

_What metrics should be added to monitor this feature. Which metrics indicate a system failure and should have an alarm associated? Where are the metrics reported and the alarms triggered from?_


## Test Plan

_What is the high level test plan? What test cases will we perform to validate this feature? Will these test cases be automated or manual? Do we need a test plan document for the proposed solution. This does not need to be final, but completing a full test plan should be accounted in final estimations._

## Launch Plan

_Include a list of action items that are necessary to launching the project._

Examples...
- Publish launch dashboard with metrics demonstrating use and health of the project
- Announcement email
- Go/no-go meeting
- Post-project review

## Task Breakdown

_If you/your team likes to include a task breakdown, it can be included here. Sometimes this helps to bring up more comments on smaller details. Actual creation of tasks should wait until after the design is finalized in case it needs to be changed and to avoid getting too invested in details._

## Reviews & Decision Log

_Keep a list of reviews completed including the audience and any action items. Use this section to help you consider who to include in your reviews. Consider reaching out to subject matter experts or senior engineers for review._

## Appendix
