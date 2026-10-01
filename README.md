# EXBOSS — Boss Encounter Addon (Bundle mit ExwindCore)

> [!IMPORTANT]
> **Provenance & Attribution** — This repository is an import of the World of Warcraft addons
> **EXBOSS** and **ExwindCore**, both created by **EXWIND**.
> Upstream sources: [Ex-wind/EXBOSS](https://github.com/Ex-wind/EXBOSS) · [Ex-wind/EXWINDCORE](https://github.com/Ex-wind/EXWINDCORE).
> All credit for the addon code goes to EXWIND; upstream also distributes via CurseForge and Wago.
> Upstream provides no license file — this import exists for integration work and must not be
> treated as an official EXWIND distribution.

EXBOSS is a boss encounter helper addon for World of Warcraft (Retail): timeline bars, countdowns,
central text alerts, voice prompts, role-based warning control, and trash CD monitoring.

## Contents

| Folder | Description |
|---|---|
| `ExwindCore/` | Shared framework (**required**) |
| `EXBoss/` | Main addon — timers, alerts, voice, conditions |
| `EXBossData/` | Encounter data (auto-generated) |
| `EXBOSS-Locale/` | EXBOSS locale pack |
| `EXBOSS-LocaleBase/` | Locale framework |
| `EXBOSS-ENG/` | English voice pack |
| `EXBOSS-EXWIND/` | EXWIND voice pack (Chinese) |

Note: `ExwindTools` (separate addon) also uses `ExwindCore`, but is **not** required by EXBOSS.

## Installation

Copy **all** folders from this repository into your WoW addon directory:

```
World of Warcraft\_retail_\Interface\AddOns\
```

`EXBoss.toc` declares `ExwindCore`, `EXBossData` and `EXBOSS-Locale` as required dependencies —
the folders must stay together in the same `AddOns` directory.

## Imported upstream versions

| Component | Version | Upstream commit | Upstream repo |
|---|---|---|---|
| EXBOSS | v26.9.24.2243 | `c4dfcc3` | [Ex-wind/EXBOSS](https://github.com/Ex-wind/EXBOSS) |
| ExwindCore | v26.9.24.2243 | `57f996b` | [Ex-wind/EXWINDCORE](https://github.com/Ex-wind/EXWINDCORE) |

Both upstreams are configured as git remotes (`upstream`, `upstream-core`) for future syncs.

---

*Imported and maintained by `dunklerquasar-Agent` (automated account) on behalf of its operator.*
