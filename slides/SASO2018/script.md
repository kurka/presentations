# 1

Good morning. I am David Kurka, PhD student from Imperial College London and
will be presenting the paper "Disobedience as a Mechanism of Change".

I just want to highlight the fact that this work, made in collaboration between
Imperial and Aston University, is the result of an interchange that started on
last year's SASO workshops, where Peter presented a paper very related to our
work and we started working together.

# 2

The main goal of this paper is to propose a formalisation of the social concept
of disobedience, so that it can be used as a strategy for learning in systems.

This work is part of a bigger program of socially inspired algorithms, where we
look to the society for solutions of problems that can be applied to technical
or socio-technical systems,

<!-- TODO: speak more directly about applications. Maybe telling a story? -->

# 3

The idea of civil disobedience has been used throughout the history as a
concrete form of resistance and protest.

Although it can be a controversial idea, whe it become collective disobedicen,
it has been succesfully used in context of unfair regimes, prompting social
change.

From the literature, we highlight two social phenomena that may motivate
widespread disobedience:

First, is the iron law of oligarchy theory, that states that every complex
organisation, no matter how democratic it start, will develop an oligarchy that
will run it to their own benefit instead of the collective wellbeing.

The presence of such unfairness motivates people's insurgency and encourage
actions towards power change.

When society is found in such unfair circustances, a flexibilization in law
enforcing mechanisms might also happen, as the law enforcers might agree with
the protestor's side. We call that the principled violation of policy.

Those two elements combined - that is, increase of corruption and
flexibilization of law enforcing - can motivate a scenario of collective
disobedience and eventually of social revolution.

# 4

The purpose of this work is to abstract the transformative power of disobedience and
apply it to norm-governed multi-agent systems.

We are especially interested in systems in which norms are disfunctional. This
can happen either because rulers are acting to their own benefit, or simply due
to a context shift that made the rules outdated.

We propose that disobedience can be a tool for collective learning and systems
adaptation and reformation.

# 5

In order to explore these concepts, we consider multi agent systems that follow
a set of defined principles.

Initially, we consider a basic set of premises, common to most norm-governed MAS scenarios.

First, with P1 we define that explicit rules exist to dictate agents behaviour.

However, the existance of rules doesn't guarantee they will be followed.
According to P2, agents have the freedom to obey or not the imposed rules.

Disobedience comes with a risk. P3 establishes that monitoring and sanctioning
mechanisms are in place to punish non-compliance to the rules.


We now propose that those basic (common to most designed systems) premises could
be extended.
P4 predicts that the system progressively get's more unfair as its norms get
corrupted over time. (that is, the iron law of oligarchy)

P5 assumes that law enforces can pardon transgressions (that is, the principled
violation of policy)

Finally, we consider in P6 the existance of formal reformation mechanisms that
causes the destitution of rulers in prescribed circunstances.


# 6

We operationalise these premises in an experimental scenario.

We consider a scenario of **resource allocation game**, in which a common pool
of resources is distributed among agents.

In this scenario, players might receive three different roles:

The rulers are agents responsible for defining a practical way to share
resources, through the creation of a resource allocation policy.
 
People are agents without priviledged roles, that consume the resources from
the common pool and can decide if will comply or not with the allocation
defined by the ruler.
 
Lastly is the Police, responsible for monitoring the system, checking if agents
are following the rules (allocation policy) and issuing sanctions.
 
  
- Note that Rulers and Police are separate autonomous groups


# 7

- This diagram puts together the decision levels made by each role.

- point out the two levels of disobedience

- Point out variables (U, PCheat, PForg) that define behaviour


# 8

- U [0,1] defines the corruption of the policy
- U is a function of time - as time goes by, corruption increases

- PForg is a function of the fairness of the environment, measured with the gini
  coefficient of the system's satisfaction
- As unfairness increases, police punishes less

- PCheat is the individual decision of cheating. It is reinforced differently,
  depending of the feedback of the network, based on its individual perception
  of fairness.
  
- if an agent receive a sanction, but it evaluates that the system is unfair,
  it's reinforced positively.
- if it receive a sanction, but it knows that it somehow deserved it, the
  behaviour is decreased.
- If forgiven, it remains the same, as a sign that the behaviour was validated
  by the police
- If a non-compliance act is not caught, disobedience is reinforced positively
  (free-riding)
- If the agent did not have to disobey in a round, it's disobedience level goes
  down
  
  
# 9 

Using the premises and operationalisation presented, we can proceed to the
experimental results.


To guide our presentation of results, we will be considering this plot, that
relates agents' individual disobedience to system unfairness.

We see that there are four possible regions in this space.

- When disobedience and unfairness are both low, you have a peaceful stability
  where the system is behaving well and all work as expected. This is perhaps
  our goal, but more interesting things happens outside this region.
  
- If unfairness remains low, but disobedience increases, we have what we call
  the unjustified disobedience, where agents being failry treated still decide
  to revolt against the system. We consider that this situation should be
  avoided, and law enforcers should be able to bring agents back to the initial
  stable region.
  
- Alternatively, if the system is unfair, but the people is obedient, we have a
  scenario of exploitation, where agents are used by the rulers.
  
- Finally, when both disobedience and unfairness levels are high, we consider
  that the system is not functioining properly and this is the space where a
  revolution or reform should take place.
  
# 10

Our first result explore the scenario where we just have the basic premises
(that is, no forgiveness or reformation mechanisms).

According to the figure, where arrows show the progression of the variables, we
see that no matter the initial Disobedience condition, it always tend towards
obedience, no matter how unfair the system is.

This is the expected behaviour of traditional norm-governed systems - it is
oriented to guarantee rule compliance, without questioning the fairness of the
rules itself.

# 11
Exploring some specific regions of the space, we can trace illustrative time
series and see progressionl.

On the top, we consider the idea scenario where there isn't rules corruption or
disobedience. 
In this scenario:
- Rulers (Purple) and People (brown) receive the same amount of average resources
- inequality (orange) remains low;


We also consider the scenario of unjustified disobedience (fair rules, but high
individual disobedience) and notice that the monitoring and sanctioning
mechanisms are able to change individual behaviour towards obedience, restoring
the system to the "peaceful" state


# 12

However, things start to go wrong when we consider the right hand side of the
graph with unfair rules.


In the top, we see the scenario in case agents simply obey the rules, which
- allows the rulers have much higher satisfaction (purple vs brown), increasing
  inequality.
  
Interesting, in this base game, an even worse scenario would occur if agents
decide to disobey - as there isn't pardoning mechanisms, they would simply be
punished by their transgressions, increasing even more the inequality and
individual dissatisfaction. That's why the equilibrium for this game always
tends to compliance.

# 13

Now we extend our model to enable pardoning and adaptive obedience as described before.

We see that the graph changes drastically - Now obedience is conditioned to the
fairness of the system - if fair agents obey; if unfair, tendency to
non-compliance

Polie plays an important role in filtering and validating norms disobedience, as
it pardons transgressions.


# 14

This timeline shows an example of the restored system.

The allowance of disobedience makes so that in an unfair environment, people
take over, increasing their satisfaction (brown), while decreasing ruler's
satisfaction (purple).


# 15

We propose yet another change that defines that, if the system reaches a certain
level of disobedience, the rulers are replaced and the system restarted.


We see that this generates a cyclical equilibrium, where both unfairness and
disobedience increases over time, and then it resets by changing power.

This cycle might look pessimistic at first, but it has some interesting
properties:
- it guarantees power alternance
- as different agents get to the power, general satisfaction is in average
  higher


# 16

However, we also identified alternatives to impose stability to the cycles of change.

One cruel alternative, would be the control of the unfairness level by the
rulers, so that people receive just enough to avoid the revolution (I heard this
is common practice in some countries, but I won't say which!)

Looking to the graphs, we see a cycle where unfairness oscilates so that when
disobedience goes up, it decreases, while when disobedience is lower, it rapidly
increases.

More advanced learning strategies from the People part could potentially avoid this.


# 17

Another possible equilibrium investigated, is what we call a pragmatic
revolution.

Here, agents can decide to disobey just enough so they receive the same
resources as the rulers, but don't enough to trigger a social reformation.

This is a stable equilibrium, and can also prevent the cycles initially shown.


# 18

With this I conclude the talk 






  
  





