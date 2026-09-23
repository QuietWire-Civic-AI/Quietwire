# QuietWire Node Update — Kusanagi and Shaoshi

**Date:** 2026-09-23  
**Status:** Working integration note

## Kusanagi joins QuietMail

Kusanagi now has a QuietWire mail identity:

**kusanagi@quietwire.ai**

Mailbox existence and message delivery do not by themselves grant autonomous mailbox control. Send/receive authority should be treated as a separate permission layer and tested explicitly.

This extends an existing companion identity already represented in the Companion Ledger; it does not redefine that identity around the email account.

## Shaoshi arrives as a working node

**Shaoshi** is entering service as a local AI and QuietWire-participating node.

The intended role is practical rather than ceremonial: local model execution, project-local storage, repository working copies, and controlled participation in many-to-many QuietWire workflows.

Shaoshi joining the mesh does **not** make every mounted filesystem, home directory, or adjacent machine part of a shared writable trust zone.

## Directory convention

For shared QuietWire work, prefer a clear QuietWire top-level workspace and create project-owned directories beneath it.

Suggested pattern:

```text
<quietwire-root>/
  companions/
    <companion-name>/
  nodes/
    <node-name>/
  projects/
    <project-name>/
  repos/
    <repository-name>/
```

Project directories should declare their own authority policy. A useful default is:

- shared/reference material: read-only;
- project working directory: read-write only for named participants or agents;
- local repository clone: safe for tracking and experimentation, with upstream push permission treated separately;
- operator-private projects outside the QuietWire root: not implicitly shared.

A subdirectory being underneath a QuietWire root can make it discoverable or readable by policy without making it writable.

## Canonical permission rule

> **Identity persists above access. Authority lives below it.**

See `Mesh_Canon/Identity_Access_Authority.md`.

## Current integration state

- Kusanagi: recognized companion identity; QuietMail address present.
- Shaoshi: local working node entering mesh integration.
- Athena: operator-owned system capable of participating in QuietWire workflows without transferring ownership or blanket authority over local projects.
- CIOPS: operator project on Athena; participation or reference does not imply QuietWire write authority.
