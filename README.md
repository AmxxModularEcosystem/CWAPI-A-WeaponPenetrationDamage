# [CWAPI-A] WeaponPenetrationDamage

Реализация регулировки урона от прострела для кастомных оружий в CustomWeaponsAPI.

## Требования

- [CustomWeaponsAPI](https://github.com/AmxxModularEcosystem/CustomWeaponsAPI) версии [1.0.0-b3](https://github.com/AmxxModularEcosystem/CustomWeaponsAPI/releases/tag/1.0.0-b3) или новее
- [ReAPI](https://github.com/rehlds/ReAPI) версии [5.24.0.300](https://github.com/rehlds/ReAPI/releases/tag/5.24.0.300) или [новее](https://github.com/rehlds/ReAPI/releases/latest)

---

Репозиторий включает в себя способность: `WeaponPenetrationDamage`.

## Способность `WeaponPenetrationDamage`

Способность позволяет регулировать `урон` оружия от `простреливания`.

Параметры способности:

| Параметр    | Тип            | По умолчанию   | Описание                                   |
| :-------------- | :------------- | :------------- | :------------------------------------- |
| `DamageMultiply`| Д.Число        | *Обязательный* | Множитель урона (1.0 - стандарт)       |

## Настройка способности

В необходимое `оружие` нужно добавить код для способности. Готовый пример есть ниже.

```json
{
    "Name": "AK47_Vulcan",
    "Reference": "weapon_ak47",
    "Abilities": {
        "WeaponPenetrationDamage": {
            "DamageMultiply": 2.0
        }
    },
    "DamageMult": 1.5,
    "MaxClip": 80,
    "MaxAmmo": 160,
   
    "Models": {
        "View": "models/cwapi/v_ak47.mdl",
        "Player": "models/cwapi/p_ak47.mdl",
        "World": "models/cwapi/w_ak47.mdl"
    }
}

```

