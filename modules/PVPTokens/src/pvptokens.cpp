#include "ScriptMgr.h"
#include "Player.h"
#include "Configuration/Config.h"
#include "Config.h"
#include "Chat.h"
#include "Unit.h"
#include <cmath>

class PVPToken : public PlayerScript
{
public:
    PVPToken() : PlayerScript("PVPToken") { }

    void OnPVPKill(Player* killer, Player* killed) override {
        if (sConfigMgr->GetBoolDefault("PvPTokens.Enable", true)) {
            const uint32 PVPTokeninHyjal = sConfigMgr->GetIntDefault("PvPTokens.PVPTokenIDinHyjal", 49426);
            const uint32 PVPToken = sConfigMgr->GetIntDefault("PvPTokens.PVPTokenID", 29434);
            uint32 count = sConfigMgr->GetIntDefault("PvPTokens.PVPTokenCount", 1);
            uint32 itemID = 29434;
            if(killer->InBattleground() || killer->IsFFAPvP()){
                itemID = PVPToken;
                if (killed->getLevel() == 80) {
                    count *= 3;
                }
                killer->AddItem(itemID, count);
            }
            if (killed->getLevel() == 80 && killer->GetAreaId() == 616) {
                itemID = PVPTokeninHyjal;
                killer->AddItem(itemID, count);
            }
        }
    }
};

class PVPTokenConfig : public WorldScript
{
public:
    PVPTokenConfig() : WorldScript("PVPToken") { }

    void OnBeforeConfigLoad(bool reload) override
    {
        if (!reload) {
            std::string conf_path = _CONF_DIR;
            std::string cfg_file = conf_path + "/mod_pvptokens.conf";
            std::string cfg_def_file = cfg_file + ".dist";
            sConfigMgr->LoadMore(cfg_def_file.c_str());
            sConfigMgr->LoadMore(cfg_file.c_str());
        }
    }
};

void AddPVPTokensScripts() {
    new PVPToken();
    new PVPTokenConfig();
}
