/*

SOLSTICIO DE VERANO  -- TRIGGERS Y DEMASES

*/



class npc_trigger_ribbon : public CreatureScript
{
public:
    npc_trigger_ribbon() : CreatureScript("npc_trigger_ribbon") { }

    struct npc_trigger_ribbonAI : public ScriptedAI
    {
        npc_trigger_ribbonAI(Creature* creature) : ScriptedAI(creature) {}

		uint32 PersonasBailando;
		uint32 TimeOuA;
		uint32 TimeOuB;
		uint32 TimeOuC;

        void Reset()
        {
			PersonasBailando = 0;
			TimeOuA = 30000;
			TimeOuB = 40000;
			TimeOuC = 4000;
           
        }
  
 void ComenzandoBaile(bool modificador, Unit* player)
	 {
		if(modificador)
		{
                ++PersonasBailando;
            if(PersonasBailando == 1)
			    TimeOuA = 30000;
			else if(PersonasBailando == 2){
			    TimeOuA = 2000;
			    TimeOuB = 40000;}
			else if(PersonasBailando > 2 && PersonasBailando < 6){
				TimeOuA = 2000;
				TimeOuB = 25000; }
			else if(PersonasBailando > 5 && PersonasBailando < 11){
			    TimeOuA = 1000;
				TimeOuB = 5000;
			    TimeOuC = 3000;}
			else if(PersonasBailando > 10){
                TimeOuA = 500;
				TimeOuB = 5000;
			    TimeOuC = 3000;
		}


       if(PersonasBailando < 11)
		 {
			    player->CastSpell(me,40071,true);
				player->CastSpell(player,62192,false);
		 }else
		 {
              switch (urand(0, 1))
                    {
                        case 0:
							player->CastSpell(me,40071,true);
							player->CastSpell(player,62192,false);
                          break;
                        case 1:
	                        	player->CastSpell(me,45421,true);
								player->CastSpell(player,62192,false);
	                      break;
		            }
		 }
            
       }
		else
		{
		     if(PersonasBailando > 0)
			    --PersonasBailando;


			if(PersonasBailando == 1)
			    TimeOuA = 30000;
			else if(PersonasBailando == 2){
			    TimeOuA = 2000;
			    TimeOuB = 40000;}
			else if(PersonasBailando > 2 && PersonasBailando < 6){
				TimeOuA = 2000;
				TimeOuB = 25000; }
			else if(PersonasBailando > 5 && PersonasBailando < 11){
			    TimeOuA = 1000;
				TimeOuB = 5000;
			    TimeOuC = 3000;}
			else if(PersonasBailando > 10){
                TimeOuA = 500;
				TimeOuB = 5000;
			    TimeOuC = 3000;
	    }
   }
}


	   void UpdateAI(const uint32 diff)
	   {	

     if (PersonasBailando == 1)
      {
        if (TimeOuA <= diff)
		  {
			  me->CastSpell(me,46847,true);
              TimeOuA = 4000;
          } else TimeOuA-= diff;
       }
    else if (PersonasBailando == 2)
       {
        if (TimeOuA <= diff)
		  {
			  me->CastSpell(me,46847,true);
              TimeOuA = 3000;
          } else TimeOuA-= diff;

        if (TimeOuB <= diff)
		  {
			  me->CastSpell(me,46969,true);
              TimeOuB = 37000;
          } else TimeOuB-= diff;
       }
else if (PersonasBailando > 2 && PersonasBailando < 6)
{
if (TimeOuA <= diff)
		  {
			  me->CastSpell(me,46847,true);
              TimeOuA = 2700;
          } else TimeOuA-= diff;

if (TimeOuB <= diff)
		  {
			  me->CastSpell(me,46969,true);
              TimeOuB = 25000;
          } else TimeOuB-= diff;
}
else if (PersonasBailando > 5 && PersonasBailando < 11)
{
if (TimeOuA <= diff)
		  {
			  me->CastSpell(me,46847,true);
              TimeOuA = 1800;
          } else TimeOuA-= diff;

if (TimeOuB <= diff)
		  {
			  me->CastSpell(me,46969,true);
              TimeOuB = 22000;
          } else TimeOuB-= diff;
	
if (TimeOuC <= diff)
		  {
			  me->CastSpell(me,37099,true);
              TimeOuC = 7000;
          } else TimeOuC-= diff;

}
else if (PersonasBailando > 10)
{
if (TimeOuA <= diff)
		  {
			  me->CastSpell(me,46847,true);
              TimeOuA = 800;
          } else TimeOuA-= diff;

if (TimeOuB <= diff)
		  {
			  me->CastSpell(me,46969,true);
              TimeOuB = 20000;
          } else TimeOuB-= diff;
	
if(PersonasBailando > 10 && PersonasBailando < 15)
{
if (TimeOuC <= diff)
		  {
			  me->CastSpell(me,37099,true);
              TimeOuC = 3000;
          } else TimeOuC-= diff;
}
else{
if (TimeOuC <= diff)
		  {
			  me->CastSpell(me,37099,true);
              TimeOuC = 900;
          } else TimeOuC-= diff;
}
    }
	   }
	};

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_trigger_ribbonAI(creature);
    }
};


enum RibbonPoleData
{
    SPELL_HAS_FULL_MIDSUMMER_SET = 58933,
    SPELL_BURNING_HOT_POLE_DANCE = 58934,
    SPELL_RIBBON_DANCE = 29175,
    GO_RIBBON_POLE = 181605,
};

class spell_gen_ribbon_pole_dancer_check : public SpellScriptLoader
{
    public:
        spell_gen_ribbon_pole_dancer_check() : SpellScriptLoader("spell_gen_ribbon_pole_dancer_check") { }

        class spell_gen_ribbon_pole_dancer_check_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_gen_ribbon_pole_dancer_check_AuraScript);

            bool Validate(SpellEntry const* /*spell*/)
            {
                if (!sSpellStore.LookupEntry(SPELL_HAS_FULL_MIDSUMMER_SET))
                    return false;
                if (!sSpellStore.LookupEntry(SPELL_BURNING_HOT_POLE_DANCE))
                    return false;
                if (!sSpellStore.LookupEntry(SPELL_RIBBON_DANCE))
                    return false;
                return true;
            }

            void PeriodicTick(AuraEffect const* /*aurEff*/)
            {
                Unit* target = GetTarget();

                if (!target)
                    return;


                 if(!target->GetAura(40227) && !target->GetAura(40228) && !target->GetAura(40071) && !target->GetAura(62192))
				 {
				if (Creature* Ribbon_trigger = target->FindNearestCreature(17066, 15.0f))
	              CAST_AI(npc_trigger_ribbon::npc_trigger_ribbonAI, Ribbon_trigger->AI())->ComenzandoBaile(true, target);

 
				 }

                
                if (!target->FindNearestGameObject(GO_RIBBON_POLE, 10.0f) || !target->HasUnitState(UNIT_STATE_CASTING))
                {
                    target->InterruptNonMeleeSpells(false);
                    target->RemoveAurasDueToSpell(GetId());

				if (Creature* Ribbon_trigger = target->FindNearestCreature(17066, 70.0f))
                    CAST_AI(npc_trigger_ribbon::npc_trigger_ribbonAI, Ribbon_trigger->AI())->ComenzandoBaile(false, target);
				 target->RemoveAurasDueToSpell(40227);
				 target->RemoveAurasDueToSpell(40228);
				 target->RemoveAurasDueToSpell(40071);
				 target->RemoveAurasDueToSpell(62192);
				 target->RemoveAurasDueToSpell(45421);
				 


                    return;
                }

           
                if (Aura* aur = target->GetAura(SPELL_RIBBON_DANCE))
                {
                    aur->SetMaxDuration(aur->GetMaxDuration() >= 3600000 ? 3600000 : aur->GetMaxDuration() + 180000);
                    aur->RefreshDuration();

        
                    if (aur->GetMaxDuration() == 3600000 && target->HasAura(SPELL_HAS_FULL_MIDSUMMER_SET))
                        target->CastSpell(target, SPELL_BURNING_HOT_POLE_DANCE, true);
                }
                else
                    target->AddAura(SPELL_RIBBON_DANCE, target);
            }

            void Register()
            {
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_gen_ribbon_pole_dancer_check_AuraScript::PeriodicTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_gen_ribbon_pole_dancer_check_AuraScript();
        }
};

class npc_trigger_torch_mal : public CreatureScript
{
public:
    npc_trigger_torch_mal() : CreatureScript("npc_trigger_torch_mal") { }

    struct npc_trigger_torch_malAI : public ScriptedAI
    {
        npc_trigger_torch_malAI(Creature* creature) : ScriptedAI(creature) {}

		uint32 timercount;
		bool CountAcept;

 void Reset()
        {
 CountAcept = false;
 }

 Creature* GetRandomEntryTarget(uint32 entry, float range = 100.0f)
        {
            std::list<Creature*> TargetList;
            me->GetCreatureListWithEntryInGrid(TargetList,entry, range);
            if(TargetList.empty())
                return NULL;

            std::list<Creature*>::iterator itr = TargetList.begin();
            advance(itr, urand(0, TargetList.size()-1));
			
            return (*itr);
        }



 void Selection(bool type, Unit* plr)
	   {
	if(Creature* trigg = me->FindNearestCreature(90028,1))
        {
			if(plr){
				if(me->GetDistance2d(plr) <= 2){
					if (Aura* aura = plr->GetAura(45693)){
				        if(plr->GetTypeId() == TYPEID_PLAYER){
						  if(aura){
							  if ((aura->GetStackAmount() == 4) && (plr->ToPlayer()->GetQuestStatus(11923) == QUEST_STATUS_INCOMPLETE || plr->ToPlayer()->GetQuestStatus(11657) == QUEST_STATUS_INCOMPLETE)){
					             if(plr->ToPlayer()->GetQuestStatus(11923) == QUEST_STATUS_INCOMPLETE)
									  plr->ToPlayer()->CompleteQuest(11923);
								 if(plr->ToPlayer()->GetQuestStatus(11657) == QUEST_STATUS_INCOMPLETE)
									  plr->ToPlayer()->CompleteQuest(11657);

								 plr->PlayDirectSound(12340);
						         plr->RemoveAurasDueToSpell(45693);
							  }
							  else if ((aura->GetStackAmount() == 10) && (plr->ToPlayer()->GetQuestStatus(11925) == QUEST_STATUS_INCOMPLETE || plr->ToPlayer()->GetQuestStatus(11924) == QUEST_STATUS_INCOMPLETE)){
                                  if(plr->ToPlayer()->GetQuestStatus(11925) == QUEST_STATUS_INCOMPLETE)
									  plr->ToPlayer()->CompleteQuest(11925);
								 if(plr->ToPlayer()->GetQuestStatus(11924) == QUEST_STATUS_INCOMPLETE)
									  plr->ToPlayer()->CompleteQuest(11924);

								 plr->PlayDirectSound(12340);
						         plr->RemoveAurasDueToSpell(45693);
							  }
							  else{

					  if(Unit* target = GetRandomEntryTarget(90028,35.0f))
						  plr->CastSpell(target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 45669, true); 

                          plr->CastSpell(plr,45693,true);			
							  }}}}
					             else{
								  if(Unit* target = GetRandomEntryTarget(90028,35.0f))
						  plr->CastSpell(target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 45669, true); 

                          plr->CastSpell(plr,45693,true);	
							  }}
}
	}
	else
	{
      if(type)
      {
       if (Unit* target =  me->FindNearestPlayer(1.0f, true))
         target->CastSpell(target,45280,true);
         me->DespawnOrUnsummon(500);
}
else
{
	timercount = urand(1500, 2000);
	CountAcept = true;
	me->DespawnOrUnsummon(4000);
}
 }
 }


	   void UpdateAI(const uint32 diff)
	   {	
if(CountAcept)
{
	if (timercount <= diff)
		  {
 if (Unit* target =  me->FindNearestPlayer(1.0f, true))
     target->CastSpell(target,45280,true);
           me->DespawnOrUnsummon(500);
			  
		   CountAcept = false;

       } else timercount-= diff;
}}

	};
	    
	CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_trigger_torch_malAI(creature);
    }
};

class spell_gen_antorchas_logr : public SpellScriptLoader
{
    public:
        spell_gen_antorchas_logr() : SpellScriptLoader("spell_gen_antorchas_logr") {}

        class spell_gen_antorchas_logr_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_gen_antorchas_logr_SpellScript);
            
			bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(45638))
                    return false;
				if (!sSpellMgr->GetSpellInfo(45669))
                    return false;
				
 
                return true;
            }

 void HandleOnCast()
            {
	
	const WorldLocation* pos = GetExplTargetDest();
  
	if(GetCaster()->GetDistance2d(pos->GetPositionX(), pos->GetPositionY()) <= 1.5)
	{
    GetCaster()->CastSpell(GetCaster(), 45638, true); //45638
if (Creature* triggerAntor = GetCaster()->SummonCreature(90027, GetCaster()->GetPositionX(), GetCaster()->GetPositionY(), GetCaster()->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 25000))
	   CAST_AI(npc_trigger_torch_mal::npc_trigger_torch_malAI, triggerAntor->AI())->Selection(false,GetCaster());

	}
	else
 GetCaster()->CastSpell(pos->GetPositionX(), pos->GetPositionY(), pos->GetPositionZ(), 45669, true); //45638

             }
 

            void Register()
            {
				OnCast += SpellCastFn(spell_gen_antorchas_logr_SpellScript::HandleOnCast);
            }

        };

        SpellScript* GetSpellScript() const
        {
            return new spell_gen_antorchas_logr_SpellScript();
        }
};

class spell_gen_lanz_antor_logro: public SpellScriptLoader
{
    public:
        spell_gen_lanz_antor_logro() : SpellScriptLoader("spell_gen_lanz_antor_logro") {}

        class spell_gen_lanz_antor_logro_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_gen_lanz_antor_logro_SpellScript);

			bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(45638))
                    return false;
 
                return true;
            }

 void HandleOnCast()
   {	
	const WorldLocation* pos = GetExplTargetDest();
  
	if (Creature* triggerAntor = GetCaster()->SummonCreature(90027, pos->GetPositionX(), pos->GetPositionY(), pos->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 25000))
	   CAST_AI(npc_trigger_torch_mal::npc_trigger_torch_malAI, triggerAntor->AI())->Selection(true,GetCaster());
            }

            void Register()
            {
				OnCast += SpellCastFn(spell_gen_lanz_antor_logro_SpellScript::HandleOnCast);
            }
		};

        SpellScript* GetSpellScript() const
        {
            return new spell_gen_lanz_antor_logro_SpellScript();
        }
};




class spell_blandones_golpeados_qcredit: public SpellScriptLoader
{
    public:
        spell_blandones_golpeados_qcredit() : SpellScriptLoader("spell_blandones_golpeados_qcredit") {}

        class spell_blandones_golpeados_qcredit_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_blandones_golpeados_qcredit_SpellScript);


						bool Validate(SpellInfo const* /*spellEntry*/)
            {
                if (!sSpellMgr->GetSpellInfo(45716))
                    return false;
 
                return true;
            }

 void HandleOnHit()
            {

               Unit* target = GetHitUnit();

				if (!target->HasAura(45716) && !target->HasAura(46630))
					 target->RemoveAurasDueToSpell(45724);
				else{

				if (Aura* aura = target->GetAura(45724))
					   {
				  if(target->GetTypeId() == TYPEID_PLAYER)
				   {
                if (aura && aura->GetStackAmount() == 8)
				{
				  
					  if(target->ToPlayer()->GetQuestStatus(11922) == QUEST_STATUS_INCOMPLETE){
                        target->ToPlayer()->CompleteQuest(11922);
						target->PlayDirectSound(12340);
						target->RemoveAurasDueToSpell(45724);}
					  else if (target->ToPlayer()->GetQuestStatus(11731) == QUEST_STATUS_INCOMPLETE){
						target->ToPlayer()->CompleteQuest(11731);
						target->PlayDirectSound(12340);
						target->RemoveAurasDueToSpell(45724);}
				  }
                else if (aura && aura->GetStackAmount() == 20)
				{
				  
					  if(target->ToPlayer()->GetQuestStatus(11926) == QUEST_STATUS_INCOMPLETE){
                        target->ToPlayer()->CompleteQuest(11926);
						target->PlayDirectSound(12340);
						target->RemoveAurasDueToSpell(45724);}
					  else if (target->ToPlayer()->GetQuestStatus(11921) == QUEST_STATUS_INCOMPLETE){
						target->ToPlayer()->CompleteQuest(11921);
						target->PlayDirectSound(12340);
						target->RemoveAurasDueToSpell(45724);}
				  }

  
				}
					   }
				}}
      

            void Register()
            {
               OnHit += SpellHitFn(spell_blandones_golpeados_qcredit_SpellScript::HandleOnHit);
			}

           
		};

        SpellScript* GetSpellScript() const
        {
            return new spell_blandones_golpeados_qcredit_SpellScript();
        }
};



class spell_ev_antorchas_quest : public SpellScriptLoader
{
    public:
        spell_ev_antorchas_quest() : SpellScriptLoader("spell_ev_antorchas_quest") {}

        class spell_ev_antorchas_quest_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_ev_antorchas_quest_SpellScript);
            
			bool Validate(SpellInfo const* /*spellEntry*/)
            {
				if (!sSpellMgr->GetSpellInfo(45669))
                    return false;
				if (!sSpellMgr->GetSpellInfo(45693))
                    return false;
				
                return true;
            }

	Creature* GetRandomEntryTarget(uint32 entry, float range = 100.0f)
        {
            std::list<Creature*> TargetList;
            GetCaster()->GetCreatureListWithEntryInGrid(TargetList,entry, range);
            if(TargetList.empty())
                return NULL;

            std::list<Creature*>::iterator itr = TargetList.begin();
            advance(itr, urand(0, TargetList.size()-1));
            return (*itr);
        }


 void HandleOnCast()
            {

				if (GetCaster()->HasAura(45693))
					 GetCaster()->RemoveAurasDueToSpell(45693);

	if(Unit* target = GetRandomEntryTarget(90028,35.0f))
 GetCaster()->CastSpell(target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 45669, true); 

             }
 

            void Register()
            {
				OnCast += SpellCastFn(spell_ev_antorchas_quest_SpellScript::HandleOnCast);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_ev_antorchas_quest_SpellScript();
        }
};


#define GOSSIP_LOG "Ya he conseguido las llamas de todas las ciudades."

class npc_achievement_llamas_ciudades : public CreatureScript
{
public:
    npc_achievement_llamas_ciudades() : CreatureScript("npc_achievement_llamas_ciudades") { }


  bool OnGossipHello(Player* player, Creature* creature)
    {
 if (creature->isQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());


  if (player->GetQuestRewardStatus(9325) && player->GetQuestRewardStatus(9326) && player->GetQuestRewardStatus(11935) && player->GetQuestRewardStatus(9324) && !player->GetAchievementMgr().HasAchieved(1145))
      player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_LOG, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

  if (player->GetQuestRewardStatus(9332) && player->GetQuestRewardStatus(11933) && player->GetQuestRewardStatus(9331) && player->GetQuestRewardStatus(9330) && !player->GetAchievementMgr().HasAchieved(1145))
      player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_LOG, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

    player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());
  return true;
  }

     bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();
        if (action == GOSSIP_ACTION_INFO_DEF+1)
        {
			        ItemPosCountVec dest;
                    uint8 canStoreNewItem = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 23323, 1);
                    if(canStoreNewItem == EQUIP_ERR_OK)
                    {
                        Item *newItem = NULL;
                        newItem = player->StoreNewItem(dest,23323,1,true);
                        player->SendNewItem(newItem,1,true,false);

					AchievementEntry const* Logro = sAchievementStore.LookupEntry(1145);
                    player->CompletedAchievement(Logro);  
                    }

			 player->CLOSE_GOSSIP_MENU();
        }
        return true;
    }
};


#include "CreatureTextMgr.h"

class npc_midsummer_music : public CreatureScript
{
public:
    npc_midsummer_music() : CreatureScript("npc_midsummer_music") { }

    struct npc_midsummer_musicAI : public ScriptedAI
    {
        npc_midsummer_musicAI(Creature* creature) : ScriptedAI(creature) {}

		uint32 MusicCounter;

          void Reset()
              {
				  MusicCounter = 3000;
				
		       }



	   void UpdateAI(const uint32 diff)
	   {	

	   if (MusicCounter <= diff)
		  {
			   switch (me->GetEntry())
            {
                case 90029:
                   //SendMusicToPlayers(12325);
				   sCreatureTextMgr->SendSound(me, 12325, CHAT_MSG_MONSTER_YELL, 0, TEXT_RANGE_NORMAL, TEAM_OTHER, false);
                    break;

				 case 90030:
                   //SendMusicToPlayers(12319);
				    sCreatureTextMgr->SendSound(me, 12319, CHAT_MSG_MONSTER_YELL, 0, TEXT_RANGE_NORMAL, TEAM_OTHER, false);
                    break;
			   }
			  
		   MusicCounter = 4000;

       } else MusicCounter -= diff;
	   
	   }


	};
	    
	CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_midsummer_musicAI(creature);
    }
};


class npc_triggers_ahune_midsummer : public CreatureScript
{
public:
    npc_triggers_ahune_midsummer() : CreatureScript("npc_triggers_ahune_midsummer") { }

    struct npc_triggers_ahune_midsummerAI : public ScriptedAI
    {
        npc_triggers_ahune_midsummerAI(Creature* creature) : ScriptedAI(creature) {}

		
		uint32 IDCreature;
		uint32 CountC;
		bool tr;
		uint32 Diffredeleted;

          void Reset()
              {
				  IDCreature = 1;
				  CountC = 0;
				  tr = false;
				  Diffredeleted = 100;
				
				
		       }



	   void UpdateAI(const uint32 diff)
	   {	


			   switch (me->GetEntry())
            {
                 case 90031:
					 if (!me->HasAura(56644))
						  me->CastSpell(me,56644,true);
                    
                    break;

				 case 90032:
                    if (!me->HasAura(62766))
						 me->CastSpell(me,62766,true);

                    break;

				 case 90033:
				    if(!tr)
					{
						 me->CastSpell(me,45938,true);
						 tr=true;
					}
				    break;

				 case 90034:
					 {

					 if(CountC < 12)
					 {
					 if (Creature* target = me->FindNearestCreature(IDCreature, 200.0f))
					 {
					   std::list<Creature*> lspectatorList;
                       GetCreatureListWithEntryInGrid(lspectatorList, me, IDCreature, 200.0f);
                       for (std::list<Creature*>::iterator itr = lspectatorList.begin(); itr != lspectatorList.end(); ++itr)
                        {
							if ((*itr)->isAlive())
                           (*itr)->DespawnOrUnsummon();
								//(*itr)->SetVisible(false); }
                             }
					 }
					 else
					 {
                       ++CountC;

					   if(CountC == 1)
					   IDCreature = 17817;
					   else if(CountC == 2)
					   IDCreature = 17816;
					   else if(CountC == 3)
					   IDCreature = 17957;
					   else if(CountC == 4)
					   IDCreature = 17961;
					   else if(CountC == 5)
					   IDCreature = 17960;
					   else if(CountC == 6)
					   IDCreature = 17959;
					   else if(CountC == 7)
					   IDCreature = 17964;
					   else if(CountC == 8)
					   IDCreature = 17938;
					   else if(CountC == 9)
					   IDCreature = 21128;
				       else if(CountC == 10)
					   IDCreature = 21128;
					   else if(CountC == 11)
					   IDCreature = 17963;
					 }

			
					 
					 }
					
					 
				 
					 }
					 break;
	

	   
	   }

	   }
	};
	    
	CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_triggers_ahune_midsummerAI(creature);
    }
	};
#include "LFGMgr.h"

#define EMOTE_SUBMERGE             "Ahune se retira. Sus defensas se ven reducidas."
#define EMOTE_EMERGE_SOON                "Ahune regresar""\xC3\xA1"" pronto."


enum Spells
{
    // Ahune
    SPELL_SLIPPERY_FLOOR_AMBIENT  = 46314,
    SPELL_SUMMON_ICE_SPEAR_BUNNY  = 47947,
    SPELL_SUMMON_ICE_SPEAR_OBJECT = 46369,
    SPELL_SELF_STUN               = 46416,
    SPELL_RESURFACE               = 46402,
    SPELL_SHIELD                  = 45954,
    SPELL_BEAM_ATTACK             = 46336,
    SPELL_BEAM_ATTACK_BEAM        = 46363,
    SPELL_SUBMERGE                = 37550,
    SPELL_EMERGE                  = 50142,
    SPELL_SNOWY                   = 46423,
    
    SPELL_CHILLING_AURA           = 46542,
    SPELL_PULVERIZE               =  2676,
  
    SPELL_WIND_BUFFET             = 46568,
    SPELL_LIGHTNING_SHIELD        = 12550,

    SPELL_BITTER_BLAST            = 46406,

    SPELL_ICE_SPEAR_KNOCKBACK     = 46360,
   
    SPELL_SLIP                    = 45947, // stun
    SPELL_YOU_SLIPPED             = 45946, 
    SPELL_SLIPPERY_FLOOR          = 45945  
};

enum Npcs
{
    NPC_FROSTLORD_AHUNE           = 25740,
    NPC_FROZEN_CORE               = 25865,
    NPC_AHUNITE_HAILSTONE         = 25755,
    NPC_AHUNITE_COLDWAVE          = 25756,
    NPC_AHUNITE_FROSTWIND         = 25757,
    NPC_SLIPPERY_FLOOR            = 25952,
    NPC_EARTHEN_RING_TOTEM        = 25961,
    NPC_ICE_SPEAR_BUNNY           = 25985
};

enum Objects
{
    GO_ICE_SPEAR                  = 188077,
    GO_ICE_STONE                  = 187882,
    GO_ICE_CHEST                  = 187892
};

enum Actions
{
    ACTION_START_EVENT
};

enum Events
{
    EVENT_EMERGE = 1,
    EVENT_EMERGE_SOON,
    EVENT_SUBMERGED,
    EVENT_EARTHEN_RING_ATTACK,
    EVENT_SUMMON_HAILSTONE,
    EVENT_SUMMON_COLDWAVE,
    EVENT_ICE_SPEAR
};

class npc_frostlord_ahune : public CreatureScript
{
    public:
        npc_frostlord_ahune() : CreatureScript("npc_frostlord_ahune") { }

        struct npc_frostlord_ahuneAI : public Scripted_NoMovementAI
        {
            npc_frostlord_ahuneAI(Creature* c) : Scripted_NoMovementAI(c), _summons(me) { }

            void Reset()
            {
                _summons.DespawnAll();
                _events.Reset();
                _submerged = false;

                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetReactState(REACT_PASSIVE);
                me->SetCorpseDelay(20);
                me->SetVisible(false);
                DoCast(me, SPELL_SHIELD, true);
                DoCast(me, SPELL_SUBMERGE, true);

                me->SummonGameObject(GO_ICE_STONE, -65.65f, -159.765f, -2.25f, 0, 0, 0, 0, 0, 0);
            }

            void JustSummoned(Creature* summon)
            {
                switch (summon->GetEntry())
                {
                    case NPC_FROZEN_CORE: 
                        summon->SetHealth(me->GetHealth());
                        summon->SetReactState(REACT_PASSIVE);
                        summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                        break;
                    case NPC_SLIPPERY_FLOOR:
                        summon->SetReactState(REACT_PASSIVE);
                        summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
                        summon->SetDisplayId(11686);
                        summon->setFaction(14);
                        me->AddAura(SPELL_SLIPPERY_FLOOR_AMBIENT, summon);
                        break;
                    case NPC_ICE_SPEAR_BUNNY:
                        summon->SetInCombatWithZone();
                        return;
                }

                _summons.Summon(summon);
                summon->SetInCombatWithZone();
            }

            void SummonedCreatureDespawn(Creature* summon)
            {
                if (me->isDead())
                    return;

                if (summon->GetEntry() == NPC_FROZEN_CORE)
                    me->SetHealth(summon->GetHealth());
            }

            void SummonedCreatureDies(Creature* summon, Unit* /*killer*/)
            {
                if (summon->GetEntry() == NPC_FROZEN_CORE)
                    me->DealDamage(me, me->GetHealth());
            }

            void JustDied(Unit* /*who*/)
            {
                me->SummonGameObject(GO_ICE_CHEST, -97.095f, -203.866f, -1.191f, 1.5f, 0, 0, 0, 0, 0);
                _summons.DespawnAll();

              
            }

            void DoAction(int32 const action)
            {
                me->SetVisible(true);
                me->SetReactState(REACT_AGGRESSIVE);
                me->SetInCombatWithZone();
                _events.ScheduleEvent(EVENT_EMERGE, 10000);

                if (GameObject* chest = me->FindNearestGameObject(GO_ICE_CHEST, 100.0f))
                    chest->Delete();
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;

                _events.Update(diff);

                while (uint32 eventId = _events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_EMERGE:
                            me->SummonCreature(NPC_SLIPPERY_FLOOR, *me, TEMPSUMMON_TIMED_DESPAWN, 90000);
                            me->RemoveAurasDueToSpell(SPELL_SELF_STUN);
                            me->RemoveAurasDueToSpell(SPELL_SUBMERGE);
                            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                            DoCast(me, SPELL_RESURFACE, true);
                            DoCast(SPELL_EMERGE);
                            _attacks = 0;
                            _events.ScheduleEvent(EVENT_EARTHEN_RING_ATTACK, 10000);
                            _events.ScheduleEvent(EVENT_SUMMON_HAILSTONE, 2000);
                            _events.ScheduleEvent(EVENT_SUMMON_COLDWAVE, 5000);
                            _events.ScheduleEvent(EVENT_ICE_SPEAR, 10000);
                            break;
                        case EVENT_EMERGE_SOON:
                            me->MonsterTextEmote(EMOTE_EMERGE_SOON, 0, true);
                            break;
                        case EVENT_SUBMERGED:
                            DoCast(me, SPELL_SELF_STUN, true);
                            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                            me->SummonCreature(NPC_FROZEN_CORE, *me, TEMPSUMMON_TIMED_DESPAWN, 30000);
                            _submerged = true;
                            _events.ScheduleEvent(EVENT_EMERGE_SOON, 25000);
                            _events.ScheduleEvent(EVENT_EMERGE, 30000);
                            break;
                        case EVENT_EARTHEN_RING_ATTACK:
                            ++_attacks;
                            if (_attacks >= 9)
                            {
                                me->MonsterTextEmote(EMOTE_SUBMERGE, 0, true);
                                DoCast(SPELL_SUBMERGE);
                                _events.Reset();
                                _events.ScheduleEvent(EVENT_SUBMERGED, 4500);
                            }
                            else
                            {
                                if (Creature* totem = me->FindNearestCreature(NPC_EARTHEN_RING_TOTEM, 150.0f))
                                    totem->CastSpell(me, SPELL_BEAM_ATTACK_BEAM, false);
                                _events.ScheduleEvent(EVENT_EARTHEN_RING_ATTACK, 10000);
                            }
                            break;
                        case EVENT_SUMMON_HAILSTONE:
							if (!_submerged){
                            me->SummonCreature(NPC_AHUNITE_HAILSTONE, float(irand(-110, -80)), float(irand(-225, -215)), -1.0f, 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 5000);
							  
							_events.ScheduleEvent(EVENT_SUMMON_HAILSTONE, 25000);
							}
                            break;
                        case EVENT_SUMMON_COLDWAVE:
                            for (uint8 i = 0; i < 2; ++i)
                                me->SummonCreature(NPC_AHUNITE_COLDWAVE, float(irand(-110, -80)), float(irand(-225, -215)), -1.0f, 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000);
                            if (_submerged)
                                me->SummonCreature(NPC_AHUNITE_FROSTWIND, float(irand(-110, -80)), float(irand(-225, -215)), -1.0f, 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000);
                            _events.ScheduleEvent(EVENT_SUMMON_COLDWAVE, 7000);
                            break;
                        case EVENT_ICE_SPEAR:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 150.0f, true))
                                target->CastSpell(target, SPELL_SUMMON_ICE_SPEAR_BUNNY,true);
                            _events.ScheduleEvent(EVENT_ICE_SPEAR, 7000);
                            break;
                        default:
                            break;
                    }
                }
            }

        private:
            SummonList _summons;
            EventMap _events;
            bool _submerged;
            uint8 _attacks;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_frostlord_ahuneAI(creature);
        }
};




	class go_ahune_ice_stone : public GameObjectScript
{
    public:
        go_ahune_ice_stone() : GameObjectScript("go_ahune_ice_stone") { }

        bool OnQuestReward(Player* /*player*/, GameObject* go, Quest const* /*quest*/, uint32 /*opt*/)
        {
            if (Creature* ahune = go->FindNearestCreature(25740, 200.0f, true))
            {
              //  CAST_AI(boss_ahune_midsummer::boss_ahune_midsummerAI, ahune->AI())->EventIN();
				ahune->AI()->DoAction(ACTION_START_EVENT);
                go->Delete();
            }
            return true;
        }
};


	void AddSC_evento_midsummer()
{
	new spell_gen_ribbon_pole_dancer_check();
	new spell_gen_antorchas_logr();
	new spell_gen_lanz_antor_logro();
	new spell_blandones_golpeados_qcredit();
	new spell_ev_antorchas_quest();
	new npc_trigger_torch_mal();
	new npc_trigger_ribbon();
	new npc_achievement_llamas_ciudades();
	new npc_midsummer_music();
	new npc_triggers_ahune_midsummer();
	new npc_frostlord_ahune();
	new go_ahune_ice_stone();

}