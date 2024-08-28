---
title: "Penalty Lineup Tracker"
date: "2024-02-11"
template: "guide.html"
draft: true
extra:
    author: "David Reed / Stacktrace"
---

## Introduction

The Penalty Lineup Tracker is arguably the broadest off-skates officiating role. The PLT is responsible for

- recording a single team's lineup each jam, including any Star Passes that occur;
- tracking entries to and exits from the Penalty Box;
- recording the type and number of penalties for each skater on their assigned team;
- confirming with the Penalty Box staff as each skater approaches and reaches the foul-out threshold.

Because they are stationed in the center of the track and highly mobile, the PLT may also play supporting roles, such as communicating changes to the score table and penalty box.

The PLT's broad responsibilities mean that the role requires excellent game knowledge and track awareness, the ability to complete complex paperwork under stress, and good communication skills. The PLT role is a good one for the Head NSO.

The PLT role combines the older Penalty Tracker (PT) and Lineup Tracker (LT) roles. These roles are rarely staffed today; a full complement of one PT and two LTs is more difficult to staff than two PLTs.

## The Basic Routine

### During the Lineup Period

As your team lines up for the jam, record the player numbers in the Lineup section of your paperwork.

If the team does not field a pivot, make sure to mark the _noPivot_ box for the jam. Mark the box for any blocker not fielded with a slash or X symbol to be clear that it wasn't simply _missed_, but actually not fielded.



If any jams were ended due to injury, verify that the skaters on the track are eligible to be there. 

Any skaters not on the roster, tell the Head Referee and Jam Timer.

### During the Jam
During the jam:
- Capture penalties. Echo the penalty calls
- Capture entrances and exits
- Capture Star Passes
- Signal double penalties

As needed:
- Signal penalty counts

At play stoppages:
- Verify penalty counts

At halftime:
- Shading

At halftime and end-of-game:
- Verify penalty counts
- Relay penalty counts to Head NSO

## Paperwork Nuances

### Penalties versus Box Entries

The PLT paperwork makes more sense when you understand that it is the fusion of two older forms of the paperwork, for the Penalty Tracker and Lineup Tracker roles. Those older forms are the source of the two distinct ways in which penalties are recorded on the PLT paperwork.

The left-hand side of the PLT paperwork tracks _lineups_, and comes from the old Lineup Tracker position. In lineup-tracking mode, you record _box entries and exits_. Your concern in this mode is not when the penalty was assessed (or even how many penalties were assessed), but in when the skater physically entered and exited the penalty box. Your paperwork here aligns with the Penalty Box Timer's, which also records entries and exits.

The right-hand side of the PLT paperwork tracks _penalties_, and comes from the old Penalty Tracker position. In penalty-tracking mode, you record _penalties assessed_. In this mode, you care about what kind of penalty was assessed and the jam in which it was assessed, but not when it was served.

As a result of these distinct rubrics, you may record the same event in different jams on the left- and right-hand side of your paperwork, and you may have different numbers of entries on those sides as well.

Imagine that Black 34 receives two penalties in Jam 10, a Back Block and an Illegal Procedure for failing to leave the track. By the time Black 34 reaches the Penalty Box, the jam has concluded (they sit between jams). You'd record that event like this:

{% plt() %}
10 - 34 - - - - - - - - - - - - - - - - - - -
11 - 34 S - - - - - - - - - - - - - - - - - -
12 - 34 $ - - - - - - - - - - - - - - - - - -
{% end %}

{% plt_penalties() %}
34 B10 I10 - - - - - - - -
{% end %}

Notice that the event is shown in Jam 10 under the Penalty Tracking side, but Jam 11 under the Lineup Tracking side (with an "S" indicating the skater sat between jams). Further, the double penalty is shown on the Penalty Tracking side, but the Lineup Tracking side records only a single box entry.

### Substitutions in the Penalty Box