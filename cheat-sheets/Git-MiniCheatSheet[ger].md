# GIT (MINI) CHEAT SHEET

## Installation

1. git via chocolatey installieren (elevated powershell console).

   ```powershell
   choco install git -y
   ```

2. Kommandozeile öffnen (.z.B. git bash) und folgende 2 Befehle durchführen:

   ```bash
   git config --global user.name "[name]"
   git config --global user.email "[email address]"
   ```

3. Installation ist somit abgeschlossen.

> Empfehlung: im Windows Explorer kann durch Rechtsklick der Kontextmenü-Eintrag `git bash here` ausgewählt werden, und somit einfach eine Kommandozeile im passenden Ordner geöffnet werden.


## Repositories (von Github) klonen

>  **ACHTUNG!** Dieser Schritt ist nur einmal pro Rechner zu machen! Danach ist das Repository nur zu aktualisieren.

```bash
git clone [url]
```

## Workflow

> Für die nächsten Schritte wird davon ausgegeangen, dass man sich im Basisverzeichnis des Repositories befindet! 

Immer bevor mit dem Arbeiten am Schul oder Heimrechner begonnen wird, sollten die letzen Änderungen des Repositories von github.com (`origin`) "heruntergeladen" werden:

```bash
git pull
```

Danach kann am Repository gearbeitet werden. 

Sind die Arbeiten beendet, dann sind folgende Schritte durchzuführen:

```bash
git add [file(s)]
git commit -m "[message]"
git push
```

Bei `git add` kann auch im Bedarfsfall der Platzhalter `*` verwendet werden, wenn alle Dateien im Verzeichnis hinzugefügt  werden sollen.

Wurden Dateien verschoben oder gelöscht, die bereits in der Versionsverwaltung aufgenommen wurden, dann ist es notwendig diese mit einem `remove`-Befehl (`rm`) wieder aus der Versionsverwaltung zu nehmen (Gegenteil von `add`):

```bash
git rm [file(s)]
```

