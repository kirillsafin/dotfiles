* Color-Theme: **dracula**
* Font: **FireCode**

* Drei Konfigs: Terminal, Tmux, Vim

### Terminal

* reversed-bash history: `STRG+R`
* fuzzy-cd-tool: Command `z`
* tmux
*

### Tmux

* `tmux detach` - tmux vom aktuellem Terminal Tab abtrennen
* `tmux ls` - aktuelle tmux Session anzeigen
* `tmux attach`
* Leader Key: `STRG+A` mit tmux assoyieren
* `n` - zwischen den tmux Windows switchen
* LeaderKey -> `:new-window` - neues tmux Tab aufmachen
* LeaderKey -> `:kill-window` - tmux Tab schließen

### Vim

#### Bewegung

* `STRG+D/U`
* `ciw` - Wort löschen und Insert Modus
* über .vimrc kann man Einstellen, dass Copy/Paste funktioniert => Vim-Register in System-Clipboard integrieren
* 

#### Search

* `/[WORD]` - Suchen
  * `n/N` - Suche wiederholen
  * In Visual Mode: `:` + `/[WORD]`
* `:%s/[WORD_OLD]/[WORD_NEW]
  * In Visual Mode: `:` + `s/[WORD_OLD]/[WORD_NEW]/g`
* `noh` - Search Hightliting ausmachen

* `:e FILE.EXT` = andere/weitere Datei in vim öffnen 

#### Terminal Befehle ausführen

* mit Hilfe der QuickFixList
  * in .vimrc vom Projekt mit `set xxx=xxxx` z.B. C++ Complierung festgelen
  * in ~/.vimrc eintragen:
    * `set exrc` - Projekt spezifisches .vimrc erlauben
    * `set secure`

* Plugin: fuzzy file open - Dateien in im Projekt öffnen
* Plugin: vim dispatch - Terminal Befehle einfacher ausführen
* Teil von 20:45 - 29:44 noch mal schauen
* Wenn das C++ Programm ausgeführet wird, wird QuickFixList mit den Compiler Errors angezeigt
  * mit `STRG+W, STRG+W` zur QuicklistFixList wechseln. Darin beim Fehler auf Enter klicken. Wird in die Zeile der Cpp Datei gehen
* Shortcuts dafür:
  * `:cc` - zum Fehler gehen
  * `:cn` - zum nächsten Fehler gehen
  * `:cp` - zum vorherigem Fehler gehen
  * `:cclose` - QuickFixList schließen

* mit Plugin **vim dispatch** Binary ausführen
  * `:Dispatch BINARY_NAME` - wird auch in QuickFixList ausgeführt





