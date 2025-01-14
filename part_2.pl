% Library Ontology system Prolog
% I used a subset_of(A, B) predicate to create hierarchy - reads as A is a subset of b
:- table high_order_subset_of/2.
:- table high_order_member_of/2.
:- discontiguous member_of/2.
:- discontiguous property/3.
:- discontiguous direct_property/3.

% Our library has book and movies
subset_of(books, items).
subset_of(movies, items).

% I have both fiction and nonfiction books
subset_of(fiction, books).
subset_of(nonfiction, books).

% I have five categories of fiction books
subset_of(scifi, fiction).
subset_of(fantasy, fiction).
subset_of(historical, fiction).
subset_of(romance, fiction).
subset_of(mystery, fiction).

% I have 11 categories of nonfiction books
subset_of(generalities, nonfiction).
subset_of(philosophy, nonfiction).
subset_of(religion, nonfiction).
subset_of(socialsci, nonfiction).
subset_of(language, nonfiction).
subset_of(natsci, nonfiction).
subset_of(appsci, nonfiction).
subset_of(art, nonfiction).
subset_of(literature, nonfiction).
subset_of(history, nonfiction).
subset_of(biography, nonfiction).

% Finally, I have 4 categories of movie
subset_of(action, movies).
subset_of(comedy, movies).
subset_of(drama, movies).
subset_of(whodunit, movies).
subset_of(thriller, movies).
subset_of(documentary, movies).

% I can define high_order_subset_of to allow recursion to higher order categories
high_order_subset_of(X, Y) :- subset_of(X, Y).
high_order_subset_of(X, Z) :- high_order_subset_of(X, Y), high_order_subset_of(Y, Z).
% Now, high_order_subset_of(documentary, items) is true!

% To add the books, I use a member_of(A, B) predicate - reads A is a member of B
% Thanks to ChatGPT for generating these book titles
member_of('The Stars Beyond the Veil', scifi).
member_of('Galactic Outpost', scifi).
member_of('Echoes of a Dying Sun', scifi).
member_of('The Last Colony', scifi).
member_of('Quantum Shadows', scifi).
member_of('The Singularity Paradox', scifi).
member_of('Voyage to the Red Planet', scifi).
member_of('The Artificial Mind', scifi).
member_of('War of the Dyson Spheres', scifi).
member_of('The Infinite Nexus', scifi).

member_of('Dragons of the Last Dawn', fantasy).
member_of('The Sorcerer\'s Heir', fantasy).
member_of('The Elven King\'s Curse', fantasy).
member_of('The Obsidian Blade', fantasy).
member_of('The Forest of Whispers', fantasy).
member_of('Realm of the Forgotten Gods', fantasy).
member_of('The Knight\'s Oath', fantasy).
member_of('The Crystal of Ages', fantasy).
member_of('The Witch Queen\'s Revenge', fantasy).
member_of('The Shadow of the Archmage', fantasy).

member_of('The Shadow of the Crown', historical).
member_of('Echoes of a Forgotten Era', historical).
member_of('The Emperor\'s Legacy', historical).
member_of('The Last Roman', historical).
member_of('The Siege of Constantinople', historical).
member_of('Daughters of the Samurai', historical).
member_of('The Queen\'s Gambit', historical).
member_of('The Viking\'s Saga', historical).
member_of('The Rebel\'s Honor', historical).
member_of('The War of the Roses', historical).

member_of('Hearts Entwined by Fate', romance).
member_of('Love Among the Ruins', romance).
member_of('A Dance in the Moonlight', romance).
member_of('The Duke\'s Secret', romance).
member_of('Beneath the Midnight Sky', romance).
member_of('A Love Rekindled', romance).
member_of('The Countess\'s Heart', romance).
member_of('Whispers of Desire', romance).
member_of('Stolen Kisses at Dawn', romance).
member_of('The Enchanted Lover', romance).

member_of('Whispers in the Mist', mystery).
member_of('The Silent Witness', mystery).
member_of('The Vanishing Hour', mystery).
member_of('Murder at the Manor', mystery).
member_of('The Detective\'s Dilemma', mystery).
member_of('The Midnight Clue', mystery).
member_of('Secrets of the Crypt', mystery).
member_of('The Poisoned Chalice', mystery).
member_of('The Enigma of the Lost Key', mystery).
member_of('The Haunting of Blackwood Hall', mystery).

% Same thing for nonfiction
member_of('The Encyclopedia of Modern Life', generalities).
member_of('A Guide to Information Science', generalities).
member_of('The Library of Knowledge', generalities).
member_of('An Introduction to Encyclopedic Studies', generalities).
member_of('The Evolution of Reference Materials', generalities).

member_of('The Ethics of Tomorrow', philosophy).
member_of('Reflections on the Human Condition', philosophy).
member_of('The Mind and the Cosmos', philosophy).
member_of('The Philosophy of Existence', philosophy).
member_of('Pathways to Enlightenment', philosophy).

member_of('The Sacred Texts of the World', religion).
member_of('Faith and Reason: A Dialogue', religion).
member_of('The History of Religious Thought', religion).
member_of('Exploring the Divine', religion).
member_of('Rituals and Beliefs Across Cultures', religion).

member_of('The Dynamics of Human Society', socialsci).
member_of('Globalization and Its Discontents', socialsci).
member_of('The Psychology of Communities', socialsci).
member_of('Social Structures and Change', socialsci).
member_of('The Sociology of Modern Life', socialsci).

member_of('The Origins of Language', language).
member_of('The Linguistics of Communication', language).
member_of('The Evolution of Grammar', language).
member_of('The Art of Translation', language).
member_of('Language and Power', language).

member_of('The Wonders of the Natural World', natsci).
member_of('The Science of Life', natsci).
member_of('Exploring the Universe', natsci).
member_of('The Secrets of the Earth', natsci).
member_of('The Biology of Evolution', natsci).

member_of('The Engineering of Tomorrow', appsci).
member_of('Advances in Medical Technology', appsci).
member_of('The Future of Renewable Energy', appsci).
member_of('Robotics and Artificial Intelligence', appsci).
member_of('The Chemistry of Everyday Life', appsci).

member_of('The History of Art Movements', art).
member_of('The Techniques of Master Painters', art).
member_of('The Evolution of Sculpture', art).
member_of('Art and Society: A Cultural Perspective', art).
member_of('The World of Contemporary Art', art).

member_of('The Great Works of Literature', literature).
member_of('The Art of Storytelling', literature).
member_of('The Evolution of Poetry', literature).
member_of('Literary Criticism Through the Ages', literature).
member_of('The World\'s Greatest Novelists', literature).

member_of('The Rise and Fall of Civilizations', history).
member_of('A History of the Modern World', history).
member_of('The Great Wars and Their Impact', history).
member_of('The Chronicles of Ancient Empires', history).
member_of('The Cultural Revolutions of the 20th Century', history).

member_of('The Life of a Visionary', biography).
member_of('A Journey Through Time: A Memoir', biography).
member_of('The Story of a Revolutionary Leader', biography).
member_of('The Untold Story of a Pioneer', biography).
member_of('A Portrait of Courage: The Life of a Hero', biography).

% Finally, for movies
member_of('Rise of the Titans', action).
member_of('Bulletproof Legacy', action).
member_of('The Last Stand', action).
member_of('Stormbreaker', action).
member_of('Code of Honor', action).

member_of('The Misadventures of Max', comedy).
member_of('Laughing All the Way', comedy).
member_of('Weekend Shenanigans', comedy).
member_of('The Clumsy Detective', comedy).
member_of('Chaos at the Wedding', comedy).

member_of('The Weight of Silence', drama).
member_of('A Life Unraveled', drama).
member_of('Beneath the Surface', drama).
member_of('Ties That Bind', drama).
member_of('The Heart\'s Journey', drama).

member_of('The Vanishing Room', whodunit).
member_of('Shadows in the Fog', whodunit).
member_of('The Secret of Hollow Creek', whodunit).
member_of('The Unseen Clue', whodunit).
member_of('Whispers of the Past', whodunit).

member_of('The Edge of Darkness', thriller).
member_of('Silent Pursuit', thriller).
member_of('Beneath the Ice', thriller).
member_of('Double Cross', thriller).
member_of('The Hidden Enemy', thriller).

member_of('Journey to the Edge of the Earth', documentary).
member_of('The Untold Stories of History', documentary).
member_of('Life in the Deep Ocean', documentary).
member_of('The Rise and Fall of Civilizations', documentary).
member_of('The Wonders of the Human Mind', documentary).

% Like subset_of, I made member_of work for higher order categories
high_order_member_of(X, Y) :- member_of(X, Y).
high_order_member_of(X, Z) :- member_of(X, Y), high_order_subset_of(Y, Z).

% We can use the properties predicate to give properties to each category
direct_property(format, dvd, movies).
direct_property(format, hardcover, nonfiction).
direct_property(format, paperback, fiction).

property(Prop, Value, Item) :- direct_property(Prop, Value, Item).

property(Prop, Value, Item) :-
    \+ direct_property(Prop, _, Item),
    (member_of(Item, Category); subset_of(Item, Category)),
    property(Prop, Value, Category).

% I define a dynamic fact checked_out so I can retract it when a book is returned
:- dynamic(checked_out/3).

% I used the predicate check_out(Name, B) to let users check out books - reads like Name checked out Title
check_out(Name, Title) :- assertz(checked_out(Name, Title, date_time_value('date'))).

% I used the predicate return(Name, Title) to let users return books - reads like Name returned Title
return(Name, Title) :- retract(checked_out(Name, Title, _)).

% I used the predicate is_out(Title) to check if Title is still out
is_out(Title) :- checked_out(_, Title, _).

% I used has_out(Name) to check what books member A has out
has_out(Name) :- checked_out(Name, _, _).

% I used overdue(Name, Title) to see if Name was overdue returning Title
% This calculation is not exact 
days(date(Y, M, D), Days) :- Days is (D + (M * 30) + (Y * 365)).

overdue(Name, Title) :- 
    checked_out(Name, Title, CheckedOutDate),
    days(date_time_value('date'), NowDays),
    days(CheckedOutDate, CheckedOutDays),
    DaysOut is NowDays - CheckedOutDays,
    DaysOut > 14.

% Complete the homework under this line

% Question 1
% Add a documentary, a fantasy novel, and a biography of your choice
% to the library’s collection
member_of('Planet Earth', documentary).
member_of('Game of Thrones', fantasy).
member_of('Oppenheimer', biography).

% Question 2
% Using the direct_property predicate, set the lang property for every item in the library
% to english, except 10 individual items, where it should be spanish
% Set lang property to English for all items
direct_property(lang, english, items).

% Overwrite specific items with Spanish
direct_property(lang, spanish, 'The Stars Beyond the Veil').
direct_property(lang, spanish, 'Dragons of the Last Dawn').
direct_property(lang, spanish, 'The Shadow of the Crown').
direct_property(lang, spanish, 'Hearts Entwined by Fate').
direct_property(lang, spanish, 'Whispers in the Mist').
direct_property(lang, spanish, 'The Encyclopedia of Modern Life').
direct_property(lang, spanish, 'The Ethics of Tomorrow').
direct_property(lang, spanish, 'The Sacred Texts of the World').
direct_property(lang, spanish, 'The Dynamics of Human Society').
direct_property(lang, spanish, 'The Origins of Language').

% Question 3
% Make a next_item predicate that, when given an item from the library, 
% suggests items from the same category or genre. It should not suggest the same item again
next_item(Item, Suggested_Item) :-
    member_of(Item, Category),
    member_of(Suggested_Item, Category),
    Item \= Suggested_Item.

% Question 4
% Make a next_item_lang predicate that suggests items with the same language as the initial item.
% It should not suggest the input item
next_item_lang(Item, Suggested_Item) :-
    property(lang, Lang, Item),
    property(lang, Lang, Suggested_Item),
    Item \= Suggested_Item.
    
% Question 5
% Make a next_item_from_items predicate that takes a list of items and suggests items from any of 
% those items’ categories. It should not suggest any item that is in the list of items
next_item_from_items(Items, Suggested_Item) :-
    member(Item, Items),
    member_of(Item, Category),
    member_of(Suggested_Item, Category),
    \+ member(Suggested_Item, Items).

% Question 6
% Add a similar_category property to all of the genres of fiction books within the ontology,
% where each genre has a unique other fiction genre that it is similar to. 
% You can choose which categories you think are the most similar
direct_property(similar_category, fantasy, scifi).
direct_property(similar_category, historical, fantasy).
direct_property(similar_category, mystery, historical).
direct_property(similar_category, romance, mystery).
direct_property(similar_category, scifi, romance).

% Question 7
% Make a next_item_include_similar_categories predicate that suggests items like next_item 
% but from both the same and similar categories. It should not suggest the input item
next_item_include_similar_categories(Item, Suggested_Item) :-
    member_of(Item, Category),
    (member_of(Suggested_Item, Category); 
    property(similar_category, SimilarCategory, Category),
    member_of(Suggested_Item, SimilarCategory)),
    Item \= Suggested_Item.

% Question 8
% Add a min_age property to each category of nonfiction books, 
% with random (and different) integer ages you choose for each category
direct_property(min_age, 12, generalities).
direct_property(min_age, 16, philosophy).
direct_property(min_age, 14, religion).
direct_property(min_age, 18, socialsci).
direct_property(min_age, 8, language).
direct_property(min_age, 10, natsci).
direct_property(min_age, 20, appsci).
direct_property(min_age, 15, art).
direct_property(min_age, 13, literature).
direct_property(min_age, 17, history).
direct_property(min_age, 19, biography).

% Question 9
% Make a next_item_similar_age predicate that suggests an item that is NOT in the category 
% of the input item but is in the category that’s minimum age is less than the input item’s
next_item_similar_age(Item, Suggested_Item) :-
    member_of(Item, ItemCategory),                 
    property(min_age, ItemAge, Item),
    member_of(Suggested_Item, SuggestedCategory),
    ItemCategory \= SuggestedCategory,
    property(min_age, SuggestedAge, Suggested_Item),
    SuggestedAge < ItemAge.
    
% Question 10
% Make a next_item_similar_age predicate that suggests an item that is NOT in the category of 
% the input item but is in the category that’s minimum age is less than the input item’s or is 
% in a category with a minimum age less than 5 years older. If in a category with a minimum age 
% over the original item’s minimal age, Ask_Parent should be true
next_item_similar_age(Item, Suggested_Item, Ask_Parent) :-
	member_of(Item, ItemCategory),
    property(min_age, ItemAge, Item),
    member_of(Suggested_Item, SuggestedCategory),
    ItemCategory \= SuggestedCategory,
    property(min_age, SuggestedAge, Suggested_Item),
    (SuggestedAge < ItemAge;
     SuggestedAge >= ItemAge, SuggestedAge =< ItemAge + 5),
    (SuggestedAge > ItemAge -> Ask_Parent = true; Ask_Parent = false).
    