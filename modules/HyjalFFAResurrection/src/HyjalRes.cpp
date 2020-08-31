#include "ScriptMgr.h"
#include "Player.h"
#include "Configuration/Config.h"
#include "Config.h"
#include "Chat.h"
#include "Unit.h"
#include <ctime>

class HyjalRes : public PlayerScript
{
public:
    HyjalRes() : PlayerScript("HyjalRes") { }

    void OnPlayerReleasedGhost(Player* player) override {
        if (sConfigMgr->GetBoolDefault("HyjalRes.Enable", true)) {
            if (player->GetAreaId() == 616) {
                srand((unsigned)time(0));
                int respawnPointNumber = 1 + (rand() % 10);
                player->ResurrectPlayer(1.0f);
                player->CastSpell(player, 32612, true);
                switch (respawnPointNumber) {
                case 1:
                    player->TeleportTo(1, 4294.411f, -2988.611f, 1067.279f, 2.028f);
                    break;
                case 2:
                    player->TeleportTo(1, 4262.862f, -2847.940f, 1090.191f, 0.039f);
                    break;
                case 3:
                    player->TeleportTo(1, 4351.382f, -2841.126f, 1093.912f, 5.462f);
                    break;
                case 4:
                    player->TeleportTo(1, 4630.915f, -3832.314f, 943.413f, 1.205f);
                    break;
                case 5:
                    player->TeleportTo(1, 4739.120f, -3712.206f, 964.843f, 3.251f);
                    break;
                case 6:
                    player->TeleportTo(1, 4641.297f, -3604.729f, 973.093f, 3.832f);
                    break;
                case 7:
                    player->TeleportTo(1, 4505.854f, -3601.421f, 986.017f, 0.875f);
                    break;
                case 8:
                    player->TeleportTo(1, 4420.439f, -3488.518f, 1010.573f, 0.942f);
                    break;
                case 9:
                    player->TeleportTo(1, 4627.766f, -3404.784f, 1013.549f, 0.859f);
                    break;
                case 10:
                    player->TeleportTo(1,4560.846f, -3283.079f, 996.370f, 4.794f);
                    break;
                }
            }
        }
    }
};

class HyjalResConfig : public WorldScript
{
public:
    HyjalResConfig() : WorldScript("HyjalRes") { }

    void OnBeforeConfigLoad(bool reload) override
    {
        if (!reload) {
            std::string conf_path = _CONF_DIR;
            std::string cfg_file = conf_path + "/mod_HyjalRes.conf";
            std::string cfg_def_file = cfg_file + ".dist";
            sConfigMgr->LoadMore(cfg_def_file.c_str());
            sConfigMgr->LoadMore(cfg_file.c_str());
        }
    }
};

void AddHyjalResScripts() {
    new HyjalRes();
    new HyjalResConfig();
}
