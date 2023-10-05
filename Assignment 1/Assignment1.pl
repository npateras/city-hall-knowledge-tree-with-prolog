% P17172
% Epitheto apo Π

% Exercise 1

% ----- Oikogeneia fox ----------------------------
family(
    person(tom, fox, date(7, may, 1950), works(bbc, 15200)),
    person(ann, fox, date(9, may, 1951), unemployed),
    [person(pat, fox, date(5, may, 1973), unemployed),
    person(jim, fox, date(5, may, 1973), unemployed)]
).

% ----- Oikogeneia bayes ----------------------------
family(
    person(john, bayes, date(7, february, 1945), works(facebook, 7000)),
    person(jane, bayes, date(5, june, 1947), works(tesla, 6500)),
    [person(mark, bayes, date(9, november, 1979), works(cisco, 6500)),
    person(katty, bayes, date(14, march, 1981), works(autohellas, 7500)),
    person(bill, bayes, date(19, april, 1998), unemployed)]
).

male(tom, fox).
male(pat,fox).
male(jim,fox).

male(john,bayes).
male(mark,bayes).
male(bill,bayes).

female(ann,fox).
female(jane,bayes).
female(katty,bayes).
% ----- TELOS VASHS ----------------------------------------------

% ----- KANONES ----------------------------
father(FATHER) :- family(FATHER, _, _).
mother(MOTHER) :- family(_, MOTHER, _).
children(CHILD) :- family(_, _, CHILDREN), member(CHILD, CHILDREN).

exists(PERSON) :- father(PERSON) ; mother(PERSON).

dateofbirth(person(_, _, FULLDATE, _), FULLDATE).

salary(person(_, _, _, works(_, SALARY)), SALARY). %Ean to atomo douleuei tipose ton mistho tou.
salary(person(_, _, _, unemployed), 0). %Ean to atomo einai anergo tote den exei mistho ara tipose 0.