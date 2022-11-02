#ifndef DEF_ZONEDIFFICULTY_H
#define DEF_ZONEDIFFICULTY_H

#include "Player.h"
#include "Config.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"

struct ZoneDifficultyData
{
    float HealingNerfPct;
    bool Enabled;
};

class ZoneDifficulty
{
public:
    static ZoneDifficulty* instance();

    void LoadMapDifficultySettings();

    bool IsEnabled{ false };

    typedef std::map<uint32, ZoneDifficultyData> ZoneDifficultyDataMap;
    ZoneDifficultyDataMap ZoneDifficultyInfo;

};

#define sZoneDifficulty ZoneDifficulty::instance()

#endif