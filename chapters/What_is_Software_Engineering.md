What is Software Engineering?
=============================

Software Engineering is the job of creating software that fulfils particular requirements. A typical software engineer
takes these requirements and develops code in a programming language that satisfies them. They also test the software to
make sure that it actually does meet the requirements. Once the code has been written, software engineers are also
responsible for finding and fixing any bugs in the code, adding new features, and performing maintenance over time.
Sometimes these jobs are performed by the same engineers, sometimes there will be different teams specialising in
different areas.

Typical day-to-day work for a software engineer involves picking up tasks or defect reports from the current work load,
investigating and designing a solution to them, implementing that solution, testing it, reviewing code from other
developers on the team, and taking part in meetings to report status of current work and to plan future work.

While aspects of the work of a software engineer may be carried out individually, it is increasingly common for
software engineers to have to collaborate closely with other team members to ensure smooth integration of components,
avoiding conflicts, and to encourage knowledge sharing amongst team members. Modern software engineering is very much
a social activity and much good practice boils down to recognising that programming is as much about communicating
with your other engineers (and those that will follow you) as it is about instructing the computer. A computer does
not care whether your code is well structured or easy to read, but your colleagues certainly will! (Particularly when
they are trying to work out why the system has crashed at 3am).

## Types of Software Engineering

There are a large (and growing) number of different specialities in software engineering. Some typical examples include
the following. These are just examples and the boundaries between these different types are fluid. In some companies,
a single developer may tackle all of these roles.

* _QA Engineers_:
    Otherwise known as Software Test Engineers. These specialise in verifying that software meets its expectations and
    satisfies Quality Assurance (QA). Typically, QA Engineers work closely with customers and project managers to
    clarify requirements and acceptance criteria. Various specialities exist within QA engineering, such as penetration
    testing (ensuring that software is secure against attacks), or performance testing (ensuring that the software
    performs acceptably when there are large numbers of users).
* _Application Developers_:
    These developers build complete applications for use by end users (i.e., the actual users of the software).
    Typically, such developers will specialise in either back-end work, defining the core logic of the application
    (what it does) and integrating with databases and other information sources, and front-end developers who specialise
    in writing user-interface code. Most of their work is spent adding new features to existing products or (more
    rarely) developing completely new products.
* _Systems Engineers_:
    These are developers that write low-level code used by applications: operating systems, device drivers, database
    systems, etc. We will not look at systems programming in this tutorial.
* _Middleware Developers_:
    These engineers develop so-called middleware, which are frameworks for handling common application development
    tasks. Examples include application servers that handle tasks such as allowing users to log in and out, keeping
    track of user sessions, connecting to databases, routing messages, and other typical tasks.
* _Mobile Developers_:
    Developers who specialise in creating applications for mobile devices such as iPads and smart phones.
* _Sustaining Engineers_:
    Engineers that specialise in maintaining existing software rather than developing new features. Such engineers need
    to have a deep technical knowledge of the entire code of the software product so that they can quickly locate
    problems that need fixing. Such developers are often in direct contact with technical support teams and customers
    themselves.

## The Software Lifecycle

There is no one correct way to develop software, and there are a large number of different methodologies and processes
in use. However, regardless of the particular process, there are a number of more-or-less standard phases in the
life-cycle of a software product. These include the following:

1. **Requirements**
    Here the requirements for what the software is supposed to actually do are gathered, either in a formal
    specification or more informally in notes or emails.
2. **Planning**
    Estimates of the amount of work needed to satisfy the requirements are made. Certain requirements may be moved to
    later work to ensure the plan is achievable.
3. **Design**
    Here a design for the software that meets the requirements is fleshed out.
4. **Implementation**
    This phase is when the actual code is written to implement the software.
5. **Testing**
    The code is tested to make sure that it meets the requirements, is of acceptable quality, performs well, and so on.
6. **Deployment**
    The software is deployed and made available for users to start using. This may be deployment to a server or it could
    be distribution to end users to install. If this is not the first version of the product, then there may be tasks
    here to upgrade existing data and migrate users to the new version.
7. **Maintenance**
    Now the software is deployed is must be maintained. Bug reports must be investigated and fixed. Planning begins for
    the next phase of development.

It is important not to view these phases as a strictly linear progression. Modern software development methodologies
emphasise that these phases are often intertwined and iterative. In particular, requirements may not become clear until
implementation has started, and designs can quickly become out of date. Agile methodologies are now popular. These
methodologies encourage short development cycles, producing incrementally improved software, and keeping in close
contact with customers and end users to ensure that the software is evolving in the right direction. Typically, such
methodologies involve shorter planning and design phases without large design specification documents. Instead,
development teams work through a backlog of user stories (short statements of features that are required), performing
detailed design only when a story is actively worked on. Work proceeds in short sprints of typically 2–3 weeks and
aims to complete one or more stories during this time. The goal is that the product should be releaseable after each
sprint.

## Software Development Teams

As with development methodologies, there is no standard structure for software development teams. Typically a team may
include one or more of the following roles, although the same person may often perform multiple roles:

* **Project Manager**
    Responsible for ensuring that the project is completed on time and within budget.
* **Business Analyst**
    Responsible for determining customer requirements and translating these into detailed technical requirements.
* **Software Architect**
    Senior software engineer. Responsible for the overall design (the 'architecture') of the software: how it is
    structured and deployed, what standards and technologies are to be used, etc. Typically concerned primarily with
    'non-functional' requirements: performance, reliability, security, etc. Provides advice to project management
    and customers on technical solutions, and guides software engineers to ensure the software is fit for purpose and
    robust.
* **Software Engineer**
    Responsible for concrete design and implementation of actual functionality in the software.
* **QA Engineer**
    Responsible for ensuring that the software meets requirements and is fit for purpose.
* **Technical Writer**
    Responsible for producing user manuals and other technical documentation.

Specific methodologies may introduce additional roles. For instance, the popular Scrum methodology (an agile
methodology) introduces roles such as Scrum Master (responsible for leading the daily stand-up meetings and ensuring
that nobody is prevented from making progress), and Product Owner (responsible for prioritising user stories and
deciding what should be worked on in each sprint).