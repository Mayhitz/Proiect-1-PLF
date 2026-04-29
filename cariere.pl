% 1. CARIERE

cariere(programator,         dezvoltare_software,  it).
cariere(analist_date,        analiza,              it).
cariere(designer_grafic,     design,               publicitate).
cariere(inginer_retele,      infrastructura,       it).
cariere(data_scientist,      stiinta_datelor,      it).
cariere(manager_proiect,     management,           afaceri).
cariere(medic,               medicina,             sanatate).
cariere(profesor,            educatie,             invatamant).
cariere(arhitect,            design_constructii,   constructii).
cariere(jurnalist,           comunicare,           media).
cariere(psiholog,            consiliere,           sanatate).
cariere(antreprenor,         afaceri,              antreprenoriat).


% 2. ABILITĂȚI NECESARE

abilitati(programator,       [programare, algoritmi, logica, debugging, web_development]).
abilitati(analist_date,      [sql, python, statistica, excel, vizualizare_date]).
abilitati(designer_grafic,   [photoshop, illustrator, desen, tipografie, creativitate_vizuala]).
abilitati(inginer_retele,    [retele, securitate, linux, hardware, configurare_sisteme]).
abilitati(data_scientist,    [python, machine_learning, matematica, statistica, programare]).
abilitati(manager_proiect,   [planificare, comunicare, leadership, organizare, negociere]).
abilitati(medic,             [biologie, chimie, anatomie, empatie, atentie_la_detalii]).
abilitati(profesor,          [comunicare, pedagogie, rabdare, organizare, prezentare]).
abilitati(arhitect,          [desen, geometrie, software_cad, creativitate_vizuala, planificare]).
abilitati(jurnalist,         [scriere, comunicare, cercetare, intervievare, editare]).
abilitati(psiholog,          [empatie, comunicare, ascultare_activa, analiza, rabdare]).
abilitati(antreprenor,       [leadership, negociere, planificare, comunicare, risc]).


% 3. INTERESE ASOCIATE

interese(programator,        [tehnologie, rezolvare_probleme, inovatie, gaming, automatizare]).
interese(analist_date,       [matematica, logica, rezolvare_probleme, statistica, afaceri]).
interese(designer_grafic,    [arta, estetica, creativitate, vizual, moda]).
interese(inginer_retele,     [tehnologie, securitate, hardware, rezolvare_probleme, retele]).
interese(data_scientist,     [matematica, tehnologie, inovatie, cercetare, statistica]).
interese(manager_proiect,    [organizare, leadership, afaceri, comunicare, productivitate]).
interese(medic,              [stiinta, biologie, sanatate, empatie, ajutarea_oamenilor]).
interese(profesor,           [educatie, comunicare, ajutarea_oamenilor, literatura, psihologie]).
interese(arhitect,           [arta, design, constructii, geometrie, mediu_inconjurator]).
interese(jurnalist,          [comunicare, politica, scrierea_creativa, calatorii, societate]).
interese(psiholog,           [psihologie, ajutarea_oamenilor, empatie, cercetare, comportament_uman]).
interese(antreprenor,        [afaceri, inovatie, leadership, risc, finante]).

% 4. MOTOR DE INFERENȚĂ CU SUPORT PENTRU DEZINTERESE

recomandare_cariera(AbilitatiUtilizator, IntereseUtilizator, Dezinterese, Recomandare) :-
    cariere(Recomandare, _, _),
    abilitati(Recomandare, AbilitatiCariera),
    interese(Recomandare, IntereseCariera),
    are_element_comun(AbilitatiUtilizator, AbilitatiCariera),
    are_element_comun(IntereseUtilizator, IntereseCariera),
    \+ are_element_comun(Dezinterese, IntereseCariera),   % EXCLUDERE: niciun dezinteres prezent
    \+ are_element_comun(Dezinterese, AbilitatiCariera).  % EXCLUDERE: nicio abilitate dezagreată

% 5. PREDICATE AUXILIARE

are_element_comun([Element | _], Lista) :-
    member(Element, Lista).
are_element_comun([_ | Rest], Lista) :-
    are_element_comun(Rest, Lista).

toate_recomandarile(Abilitati, Interese, Dezinterese, Lista) :-
    findall(R, recomandare_cariera(Abilitati, Interese, Dezinterese, R), Lista).