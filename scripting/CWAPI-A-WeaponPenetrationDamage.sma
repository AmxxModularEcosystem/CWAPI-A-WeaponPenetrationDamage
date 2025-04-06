#include <amxmodx>
#include <cwapi>
#include <hamsandwich>
#include <reapi>

public stock const PluginName[] = "[CWAPI-A] Weapon Penetration Damage";
public stock const PluginVersion[] = "1.0.0";
public stock const PluginAuthor[] = "notihng to say.";
public stock const PluginURL[] = "https://github.com/AmxxModularEcosystem/CWAPI-A-Snowball";
public stock const PluginDescription[] = "[CustomWeaponsAPI-Ability] Weapon Penetration Damage.";

new const AbilityName[] = "WeaponPenetrationDamage";

public CWAPI_OnLoad() {
    register_plugin(PluginName, PluginVersion, PluginAuthor);

    new T_WeaponAbility: tPenetrationAbility = CWAPI_Abilities_Register(AbilityName);
    CWAPI_Abilities_AddParams(tPenetrationAbility,
        "DamageMultiply", "Float", true
    );

    CWAPI_Abilities_AddEventListener(tPenetrationAbility, CWeapon_OnDamage, "CWAPI__Hook_OnDamage");
}

public CWAPI__Hook_OnDamage(const T_CustomWeapon: tWeapon, const itemIndex, const pVictim, const inflictorIndex, const pAttacker, &Float: fDamage, &bDamageType, const Trie: tAbilityParams) {
    if(ExecuteHam(Ham_FVisible, pAttacker, pVictim))
        return;

    new Float: fMultiDamage;
    TrieGetCell(tAbilityParams, "DamageMultiply", fMultiDamage);

    fDamage *= fMultiDamage; 
}