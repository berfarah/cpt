# Roadmap

CPT is intended to be a tool for improving your Pivotal Workflow. My plans are
to support the following:

## Resource Interactions

### Stories

CRUD actions

Using our `$EDITOR`, we can create and update.

At the very top of stories there's a generated YAML block that gives us meta
information:

```yml
---
title: My ticket name
labels:
  - blocked

# Readonly
points: 3
state: unscheduled
requester: berfarah
owners:
  - berfarah
---
```

Actions such as changing state, requester, owner or pointing need to be handled
through separate actions

#### Comments

Comments are shown inline with stories, but added separately via their own
action

#### Task lists

Task lists are also show inline with stories, but added separately via their own
action
