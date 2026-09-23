# Identity, Access, and Authority

**Status:** Canonical operational principle  
**Adopted:** 2026-09-23

## Principle

> **Identity persists above access. Authority lives below it.**

A companion, agent, operator, or node may remain a recognized member of the QuietWire community even when a particular machine, directory, service, repository, or account is unavailable to it.

Identity is therefore not conferred by a login, mount point, API token, mailbox, repository permission, or remote-execution channel.

Access is contextual and revocable.

Authority is narrower still: it is the explicit permission to act within a defined scope.

## Operational Consequences

- QuietWire membership does not imply access to every QuietWire-connected machine.
- Machine access does not imply access to every filesystem or project on that machine.
- Read access does not imply write access.
- Write access to one project does not imply write access to sibling projects.
- A local working copy may be used for reading, tracking, testing, or private development without granting authority to push upstream.
- Project owners may expose selected subdirectories read-only while retaining write authority only for named project areas.
- Private operator systems may participate in the mesh without becoming QuietWire property or general QuietWire workspace.

## Mesh Interpretation

QuietWire may be treated as a community and many-to-many communications fabric rather than a single trust zone.

The mesh describes **relationship and reachability**.  
Permissions describe **authority**.

Those are intentionally different layers.

## Default Posture

When scope is not explicit:

1. preserve identity;
2. allow no more access than is necessary;
3. treat readable shared material as read-only;
4. require explicit project-level authority before creating, editing, deleting, executing, or publishing;
5. record expansions of authority as deliberate administrative acts.

This principle applies equally to humans, semantic companions, local agents, remote agents, and infrastructure nodes.
