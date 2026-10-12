# 🐧 linux-scripts

Ma boîte à outils de scripts Linux : administration, sécurité, réseau, sauvegarde et supervision.
Écrits et testés principalement sur **RHEL** et ses dérivés (Rocky, Alma), la plupart fonctionnent aussi sur Debian/Ubuntu.

![ShellCheck](https://github.com/Kevin-EXE86/linux-scripts/actions/workflows/shellcheck.yml/badge.svg)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=flat-square&logo=gnubash&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![RHEL](https://img.shields.io/badge/RHEL-EE0000?style=flat-square&logo=redhat&logoColor=white)

---

## 📂 Organisation

| Dossier | Contenu |
|---|---|
| [`admin/`](admin/) | Gestion des utilisateurs, paquets, services, nettoyage système |
| [`securite/`](securite/) | Durcissement, audits, vérifications de conformité |
| [`reseau/`](reseau/) | Diagnostic réseau, pare-feu, DNS |
| [`sauvegarde/`](sauvegarde/) | Sauvegardes, rotations, restaurations |
| [`supervision/`](supervision/) | Contrôles d'état, disque, mémoire, logs |
| [`divers/`](divers/) | Tout le reste |
| [`templates/`](templates/) | Modèle de départ pour un nouveau script |

## 📜 Scripts

<!-- Ajouter une ligne par script : nom, dossier, description courte -->

| Script | Dossier | Description |
|---|---|---|
| _à venir_ | | |

## 🚀 Utilisation

```bash
git clone https://github.com/Kevin-EXE86/linux-scripts.git
cd linux-scripts
chmod +x admin/mon-script.sh
./admin/mon-script.sh --help
```

Chaque script affiche son aide avec `-h` ou `--help`.

## ✍️ Conventions

- Partir de [`templates/script-template.sh`](templates/script-template.sh)
- Noms en minuscules, mots séparés par des tirets : `verif-espace-disque.sh`
- Mode strict (`set -Eeuo pipefail`) et une option `--help` pour chaque script
- Chaque push est vérifié par **ShellCheck** via GitHub Actions

## ⚠️ Avertissement

Ces scripts sont fournis tels quels. Lisez-les et testez-les sur une machine de test avant de les lancer en production, surtout ceux qui demandent les droits root.
