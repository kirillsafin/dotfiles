### Folding

* `zf` - Fold unter ausgewählten Bereich mit V
* `zo` - Fold öffnen
* `zc` - Fold schließen
* `zE` - Alle Folds löschen
* `zd` - Fold unter Cursor löschen
* `zR` - Alle Folds öffnen
* `zM` - Alle Folds schließen
* `zn` - Faltungsmodus ausschalten
* `zN` - Faltungsmodus einschalten
* `zi` - Faltungsmodus umschalten

### Cursor bewegen

* `H` - zum höchsten Punkt im Vim Fenster gehen
* `L` - zum niedrigsten Punkt im Vim Fenster gehen
* `M` - zum mittlerem Punkt im Vim Fenster gehen
* `^` - zum ersten Non-Blank Zeichen in der Zeile gehen
* `CTRL + u` - Page up
* `CTRL + d` - Page down
* `#` - Wort unter Cursor auswählen und zum weiten Vorkommnis dieses Wortes springen
    * `:noh` - die Suche beenden
* `'`x2 - zurück wo man gerade war
* `)` - Anfang des nächstes Satzes
* `(` - Angang des vorheriges Satzes
* `}` - zum Anfang des nächsten Text Blocks
* `{` - zum Anfang des vorheriges Blocks
* `T/t<CHAR>` - zum CHAR springen
* `F/f<CHAR>` - zum CHAR springen
* `s` - aktuelles Zeichen löschen und einfügen
* `S` - aktuelle Zeile löschen und insert
* `%` - zu passender Klammer springen
* `CTRL+o` - zur vorherigen position springen
* `ge` - zum Ende des vorheriges Wortes
* `SRTG+f` - Seite nach unten
    * `NUMBER STRG+f` - NUMBER Seiten nach unten
* `STRG+b` - Seite nach unten
* `STRG+d` - Hälfte der Seite nach unten
* `STRG+u` - Hälfte der Seite nach unten
* `H` - Cursor zum höchsten Punkt auf der Seite
* `L` - Cursor zum untersten Punkt auf der Seite
* `M` - Cursor zum mittleren Punkt auf der Seite
* `:set scrolloff=5` - 5 Zeile auf der Seite von oben und unten anzeigen
  * `:set scrolloff` - Anzeigen was momentan scrolloff gesetzt ist
  * `:set scrolloff=999` - macht dass der Cursor immer in der Mitte ist
 
### Text editieren

* `yy` - Zeile kopieren
* `yw` - Word kopieren
* `y$` - kopieren vom Cursor bis zur Zeilenende
* `p` - Einfügen
* `dw` - Wort löschen
* `d0` - vom Cursor bis zum Zeilenbeginn löschen
* `dgg` - vom Cursor bis zum Beginn der Datei löschen
* `.` - letzte Aktion wiederhole
* * `yy` - Zeile kopieren
* `yw` - Word kopieren
* `y$` - kopieren vom Cursor bis zur Zeilenende
* `p` - Einfügen
* `dw` - Wort löschen
* `d0` - vom Cursor bis zum Zeilenbeginn löschen
* `dgg` - vom Cursor bis zum Beginn der Datei löschen
* `.` - letzte Aktion wiederholen
* `cc` - Ziele löschen und in INSERT-Mode wechsel
* `R` ins REPLACE-Mode wechseln
* `~<NUM>` - Klein-/Großbuchstaben wechseln; mit X kann man die Anzahl der folge Buchstaben angeben
* `C` - bis zur Ende der Zeile löschen und in INSERT wechseln
* `cw` - Word löschen und in insert mode wechseln
* `ciw` - Word löschen und in insert mode egal wo man im word ist
* `ci"` - Inhalt in den Quotes ändern
* `di{` - Inhalt innerhalb von `{}` löschen
* `dip` - Inhalt von Paragraph löschen
* `cit` - Inhalt von HTML Tag löschen und in insert
* `NUMBER J` - NUMBER Zeilen zur einen Zeile machen
* `NUMBER O`
* `:10,19sort` - Zeilen von 10 bis 19 sortieren
* `:10,19sort!` - Zeilen von 10 bis 19 sortieren in umgekehrter Richtung
* `:%sort` - ganze Datei sortieren
* `g;` zur letzten Änderung gehen (so auch durch Änderungen navigieren)
* `g,` zur nächsten Änderung gehen
* `:changes` - alle Änderungen anzeigen
  * `Enter` - verlassen
* `:jumps` - alle Jumps anzeigen (Searches, Marks usw.)
  * `STRG+o` - vorheriges Jump
  * `STRG+i` - nächstes Jump

### Befehle

* `/\c` - Case-Sensitive machen
* `:%s/[pattern]/[replacement]/g` - ersetzen
* `:%s/[pattern]/[replacement]/gc` - ersetzen mit Bestätigung
* `:s/[pattern]/[replacement]/g` - nur in der Zeile ersetzen

### Tabs

* `:tabnew`
* `gt`, `gT`
* `:tabo` - alle anderen Tabs schließen
* `^w[h,j,k,l]` - zum Fenster wechseln
* `^wM[H,J,K,L]` - Fenster nach 

### Spelling

* `]s` - misspelled Wörter finden nach dem Cursor
* `[s` - misspelled Wörter vor dem Cursor finden
* `]S` und `[S`
* `z=` - Vorschläge anzeigen
* `zg` - Wörter zum Wörterbuch hinzufügen

### Search and Replace
* `*` - Suchen nach unten 
* `#` - Suchen nach oben
* `/WORD` - Suchen nach unten
* `/\cWORD` - Suchen Case-Insensitive nach unten
* `/\CWORD` - Suchen Case-Sensitive nach unten
* `/\<WORD\>` - nur dieses Word suchen nach unten
* Wenn man nach sonderzeichen suchen will muss man Escape Zeichen benutzen, wenn man z.B nach Kommentaren suchen will
* `:set nohlsearch` oder `noh` oder `nohl` - Search-Highlight ausmachen
* `:set hlsearch` - Search-Highlight anmachen
* `:set noincsearch` - Incremental-Highlighting Search ausmachen
* `/` + Pfeil nach oben - durch Search-History navigieren
* `q/` - die ganze Search-History anzeige
  * `q:` - ganze Command-History anzeigen usw.
  * darin kann man die gewöhnlichen Vim Commands benutzen
* `:4,7s/WORD1/WORD2` - auf Zeilen 4 bis 7 suchen WORD1 und mit WORD2 ersetzen (Case Sensitive); nur das erste Vorkommen von WORD1
* `:%s/WORD1/WORD2` - auf ganzen Datei suchen und ersetzen
* `:4,7s/WORD1/WORD2/g` - mit `g` globales Suchen-Ersetzen
* `:4,7s/WORD1/WORD2/i` - mit `i` - Case-Insentitive
* `:4,7s/WORD1/WORD2/I` - mit `I` - Case-Sentitive
* `:4,7s/WORD1/WORD2/c` - mit `c` - wird um Bestätigung ersetzen
  * `a` - alle Vorkommen nach dem Cursor
  * `q` - quite
  * `l` - last - letzte Ersetzung

### Copy Paste

* `:set paste` - Fügt Text am Zeilenanfang
* `:w FILENAME.backup` - aktuelle Datei in FILENAME.backup speichern
* `:view FILENAME.EXT` - Datei in read-only mode öffnen
  * `:w!` - Trotzdem speichern, wenn man in read-only mode
* `:edit FILENAME.EXT` - Datei in write mode öffnen
* `read FILENAME.EXT` - Datei an Stelle des Cursors einfügen

### Sonstiges

* `gf` - Datei mit Dateinamen unter Cursor öffnen, wenn in aktuellem Ordner gefunden werden kann 
* `=G` - Einrückungen fixen
* `vimtutor`
  * `vimtutor de`
  * `vimtutor en`
* 6 Modi:
  * Basic/Normal
  * Visual
  * Eingabemodus Visual
  * Eingabemodus

#### Info Line

* `STRG+g` - aktuelle Datei in der Info Line anzeigen

#### Beispiele:

* `[number]verb[number]<noun>` - Vim Syntax für die meisten Commands
* `2dw` = `d2w`

