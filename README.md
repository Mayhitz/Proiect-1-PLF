# Proiect-1-PLF Sistem de Recomandare a Carierei


Acesta este un sistem expert simplu, scris în Prolog, conceput pentru a recomanda o carieră bazându-se pe abilitățile și interesele utilizatorului. Proiectul folosește o bază de cunoștințe predefinită și un motor de inferență logică pentru a potrivi profilul utilizatorului cu jobul ideal.

---

## Caracteristici

* **Bază de cunoștințe structurată:** Definește cariere, domenii de activitate, industrii, abilități necesare și interese asociate.
* **Motor de inferență:** Folosește reguli logice pentru a recomanda o profesie. Sistemul face o recomandare dacă utilizatorul are cel puțin o abilitate și cel puțin un interes în comun cu cerințele jobului.
* **Extensibilitate:** Baza de cunoștințe poate fi mărită rapid prin adăugarea de noi „fapte” (facts) în cod.

---

## Instrucțiuni de rulare

1.  **Clonează** acest repository sau descarcă fișierul sursă (ex: `cariere.pl`).
2.  **Deschide** terminalul sau consola mediului tău Prolog.
3.  **Încarcă** fișierul în memorie folosind comanda (înlocuiește cu numele real al fișierului tău):
    ```prolog
    ?- consult('cariere.pl').
    ```
4.  **Interoghează** sistemul apelând predicatul `recomandare_cariera/3`. Va trebui să îi oferi lista ta de abilități și lista ta de interese.
