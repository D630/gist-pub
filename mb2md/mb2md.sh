#!/usr/bin/env bash

# Convert mailbox to maildir

# 1. Aus Tunderbird Mails als eml exportieren
# 2. In Thunderbird (Archiv) eml importieren und archivieren
# 3. In Thunderbird (Archiv) Archiv als mbox exportieren

for i in 1970 {2007..2014}
do
    mb2md -s /home/user/tmp/archiv/${i} -R -d /home/user/tmp/new/${i}
done

# Überflüssige Dateien löschen .sdb-Extension entfernen
find . -type d ! -name cur ! -name new ! -name tmp -name ".*" | xargs -r rename 's/\/\./\//'

# !!! Weg finden, um das Konvertieren zu verhindern. Stattdessen: Maildir aus Mutt direkt in Mutt (Archiv) verschieben
