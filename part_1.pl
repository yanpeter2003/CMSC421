% This renders the units as a table
% you may uncomment the 2 lines below to be able to see the table when you run the ?- units(Units). query
% but please make sure it is commented out when you submit your code
% You do not need to change this
% :- use_rendering(table,
%		 [header(h('Tenant', 'Pet', 'Phone', 'Sport', 'Size'))]).

% We define the pig owner as:
% You do not need to change this
pig_tenant(Tenant) :-
	units(Hs),
	member(h(Tenant, pig, _, _, _), Hs). % TODO: edit this line

% We define the frisbee player as:
frisbee_player(Player) :-
	units(Hs),
	member(h(Player, _, _, frisbee, _), Hs). % TODO: edit this line

units(Hs) :-
	% each unit in the list Hs of units is represented as:
	% h(Tenant, Pet, Phone, Sport, Size)
	length(Hs, 5),   % TODO: change this line to define how many units are in the list Hs 
	% TODO: complete this using the information you have from the paragraph in the PART I assignment description
    member(h(professor, dog, _, _, _), Hs),						% 1
    next(h(_, _, motorola, _, _), h(_, kitten, _, _, _), Hs),	% 2
    member(h(_, _, _, soccer, ph), Hs),							% 3
    member(h(singer, _, _, tennis, _), Hs),						% 4
    next(h(student, _, _, _, _), h(_, _, _, _, onebd), Hs),		% 5
    next(h(_, _, _, _, ph), h(_, _, _, _, threebd), Hs),		% 6
    member(h(_, _, motorola, _, studio), Hs),					% 7
    Hs = [_, _, h(_, _, _, basketball, _), _, _],				% 8
    member(h(barista, _, _, _, twobd), Hs),						% 9
    Hs = [h(student, _, _, _, _)|_],							% 10
    next(h(_, _, google, _, _), h(_, fish, _, _, _), Hs),		% 11
    member(h(_, _, nokia, pickleball, _), Hs),					% 12
    member(h(_, hamster, samsung, _, _), Hs),					% 13
    member(h(entrepreneur, _, iphone, _, _), Hs),				% 14
    member(h(_, pig, _, _, _), Hs), 	% There is a tenant with a pet pig
    member(h(_, _, _, frisbee, _), Hs). % There is a tenant that plays frisbee

% TODO: change the 2 lines below to define the rule 'next' which means unit is below or above another unit
next(A, B, List) :- append(_, [A, B|_], List).
next(A, B, List) :- append(_, [B, A|_], List).

% <Queries>
% a. ?-pig_tenant(Tenant).
% b. ?-units(Units),member(h(Tenant,pig,_,_,_),Units).
% c. ?-frisbee_player(Player).
% d. ?-units(Units),member(h(Tenant,_,_,frisbee,_),Units).
% e. ?-units(Units).
% f. ?-units(Units), member(h(professor, Pet, Phone, Sport, Size), Units).
% g. ?-units(Units),member(h(Tenant,hamster,Phone,Sport,Size),Units).
% h. ?-units(Units),member(h(Tenant,Pet,Phone,Sport,ph),Units).

