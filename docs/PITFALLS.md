# Bekannte Probleme & Lösungen

## 1. cyrus-sasl Compile-Fehler (Linuxbrew)
**Problem:** Blockiert Batch-Installation von curl, gh, pandoc
**Lösung:** Einzeln installieren oder via APT/direkte Binarys

## 2. Brew Batch-Abbruch
**Problem:** Ein failendes Paket bricht alles ab
**Lösung:** `|| true` am Ende oder einzelne Befehle

## 3. VS Code: Extensions Locking
**Problem:** Parallele Installation failt
**Lösung:** Immer sequentiell mit `sleep 1`

## 4. PEP 668 (Python)
**Problem:** `pip3 install --user` blockiert
**Lösung:** `--break-system-packages` oder `pipx`

## 5. Token-Sicherheit
**Problem:** PATs in Chat/Logs/History
**Lösung:** `gh auth login --with-token` (Keychain)

## 6. Terraform nicht in Linuxbrew
**Problem:** Keine offizielle Formel
**Lösung:** `tfenv` oder HashiCorp APT

## 7. Bun/Deno nicht in Linuxbrew
**Problem:** Keine Formel verfügbar
**Lösung:** Via `npm` direkt installieren

## 8. zsh fehlt
**Problem:** Nicht auf headless Systemen
**Lösung:** Config für bash, später zu zsh wechseln
