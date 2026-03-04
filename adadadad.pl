% 1. Definirea bazelor de cunoștințe despre cariere
% Format: cariere(NumeCariera, Domeniu, Industrie).
cariere(programator, dezvoltare_software, it).

% (Exemple suplimentare pentru a avea rezultate variate)
cariere(analist_date, analiza, it).
cariere(designer_grafic, design, publicitate).

% 2. Abilitățile necesare pentru fiecare carieră
% Format: abilitati(NumeCariera, ListaAbilitati).
abilitati(programator, ['c++', java, dezvoltare_web]).
abilitati(analist_date, [sql, python, statistica]).
abilitati(designer_grafic, [photoshop, illustrator, desen]).

% 3. Interesele asociate cu fiecare carieră
% Format: interese(NumeCariera, ListaInterese).
interese(programator, [tehnologie, rezolvare_probleme, inovatie]).
interese(analist_date, [matematica, logica, rezolvare_probleme]).
interese(designer_grafic, [arta, estetica, creativitate]).


% --- MOTORUL DE INFERENȚĂ (Reguli) ---

% 4. Recomandare de carieră bazată pe abilități și interese
% Logica: O carieră este recomandată dacă utilizatorul are cel puțin 
% o abilitate și cel puțin un interes cerute de acea carieră.
recomandare_cariera(AbilitatiUtilizator, IntereseUtilizator, Recomandare) :-
    cariere(Recomandare, _, _),                   % Găsește o carieră validă
    abilitati(Recomandare, AbilitatiCariera),     % Preia abilitățile ei
    interese(Recomandare, IntereseCariera),       % Preia interesele ei
    are_element_comun(AbilitatiUtilizator, AbilitatiCariera), % Verifică potrivirea abilităților
    are_element_comun(IntereseUtilizator, IntereseCariera).   % Verifică potrivirea intereselor

% Predicat auxiliar: verifică dacă două liste au cel puțin un element comun
are_element_comun([Element | _], Lista) :-
    member(Element, Lista). % Reușește dacă primul element e în a doua listă
are_element_comun([_ | Rest], Lista) :-
    are_element_comun(Rest, Lista). % Altfel, continuă căutarea cu restul listei