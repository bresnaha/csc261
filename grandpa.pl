% Lab: Prolog

% Part A
parent(P,C) :- child(C,P).
father(F,C) :- male(F), parent(F,C).
mother(M,C) :- female(M), parent(M,C).
son(S,P) :- male(S), child(S,P).
daughter(D,P) :- female(D), child(D,P).
grandfather(G,C) :- male(G), father(G,P), parent(P,C).
grandmother(G,C) :- female(G), mother(G,P), parent(P,C).
grandson(S,G) :- male(S), son(S,P), son(P,G).
graddaughter(D,G) :- female(D), daughter(D,P), daughter(P,G).
wife(W,H) :- female(W), married(H,W).
husband(H,W) :- male(H), married(H,W).
sibling(X,Y) :- child(X,P), child(Y,P).
brother(B,X) :- male(B), sibling(B,X).
sister(S,X) :- female(S), sibling(S,X).
uncle(U,X) :- male(U), sibling(U,P), parent(P,X).
aunt(A, X) :- female(A), sibling(A,P), parent(P,X).

% Part B - Step I
stepmother(SM,X) :- female(SM), wife(SM,F), father(F,X), \+ mother(SM,X). 
stepfather(SF,X) :- male(SF), husband(SF,M), mother(M,X), \+ father(SF,X).

% Step II
soninlaw(S,P) :- male(S), husband(S,W), child(W,P).

% Step III
%male(n). % narrator n
%male(f). % father f
%male(s1). % son s1
%male(s2). % son s2
%female(w). % widow w
%female(d). % daughter d
%married(n,w). % n married a widow w
%married(f,d). % f married n's step-daughter d
%child(d,w). % w has a grown-up daughter d
%child(n,f). % n's father f
%child(s1,w). % n's wife w has son s1
%child(s2,d). % n's step-daughter d has son s2

%tests
male(g).
male(p).
male(c).
father(g,p).
parent(p,c).



% Step IV
