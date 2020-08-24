#include "ScriptMgr.h"
#include "Player.h"
#include "Configuration/Config.h"
#include "Config.h"
#include "Chat.h"
#include <cmath>

static constexpr const char* PVPKillRate = "PVPExp.Rate";

class PVPExp : public PlayerScript
{
public:
    PVPExp() : PlayerScript("PVPExp") { }

    void OnPVPKill(Player* killer, Player* killed) override {
        if (sConfigMgr->GetBoolDefault("PvPExp.Enable", true)) {
            const uint32 PVPExpRate = sConfigMgr->GetIntDefault(PVPKillRate, 1);
            if (killer->GetGUID() == killed->GetGUID())
                return;
            if (killer->getLevel() - killed->getLevel() < 8) {
                if (killer->getLevel() < 30)
                    killer->GiveXP(uint32(pow(killed->getLevel() + 3, 2) * PVPExpRate), NULL);
                else
                killer->GiveXP(uint32(pow(killed->getLevel(), 2)/2 * PVPExpRate), NULL);
            }
        }
    }
};

class PVPExpConfig : public WorldScript
{
public:
    PVPExpConfig() : WorldScript("PVPExp") { }

    void OnBeforeConfigLoad(bool reload) override
    {
        if (!reload) {
            std::string conf_path = _CONF_DIR;
            std::string cfg_file = conf_path + "/mod_pvpexp.conf";
            std::string cfg_def_file = cfg_file + ".dist";
            sConfigMgr->LoadMore(cfg_def_file.c_str());
            sConfigMgr->LoadMore(cfg_file.c_str());
        }
    }
};

void AddPVPExpScripts() {
    new PVPExp();
    new PVPExpConfig();
}

