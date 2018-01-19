sub initParamsQuestClasse2 {
    #Possibilidade 1:
    Commands::run ("iconf 931 5 1 0" ); #Amuleto dos Orcs
    Commands::run ("iconf 903 5 1 0" ); #Língua de Réptil
    Commands::run ("iconf 1040 5 1 0"); #Bigode de Anão Ancião
    Commands::run ("iconf 7006 5 1 0"); #Asa de Morcego Vermelha
    Commands::run ("iconf 1057 5 1 0"); #Pó de Traça
    Commands::run ("iconf 1028 5 1 0"); #Crina
    #Possibilidade 2:
    Commands::run ("iconf 966 5 1 0" ); #Carne de Ostra
    Commands::run ("iconf 950 5 1 0" ); #Coração de Sereia
    Commands::run ("iconf 1042 5 1 0"); #Pata de Inseto
    Commands::run ("iconf 1032 5 1 0"); #Flor de Planta Carnívora
    Commands::run ("iconf 7031 5 1 0"); #Frigideira Velha
    Commands::run ("iconf 946 5 1 0" ); #Casco de Caramujo
}

#Copiadode Gaspel, CALF e Nipodemos e editado por reiropke
#quest virar cavaleiro

automacro virarCavaleiroInicio_salvarEmProntera {
    JobID $paramsClasses{idC1}
    JobLevel = 50
    FreeSkillPoints = 0
    priority 2
    exclusive 1
    ConfigKeyNot saveMap prontera
    ConfigKeyNot In_saveMap_sequence true
    ConfigKeyNot quest_eden em_curso
    ConfigKeyNot quest_eden terminando
    NpcNotNear /Chefe dos Cavaleiros/
    #testar quests
    QuestInactive 9000
    QuestInactive 9001
    QuestInactive 9002
    QuestInactive 9003
    QuestInactive 9004
    QuestInactive 9005
    QuestInactive 9006
    QuestInactive 9007
    QuestInactive 9008
    QuestInactive 9009
    QuestInactive 9010
    QuestInactive 9011
    QuestInactive 9012
    call SetSaveIn "prontera"
}

automacro virarCavaleiro_Começo_irAoNpc {
    JobLevel = 50
    JobID $paramsClasses{idC1}
    exclusive 1
    QuestInactive 9000
    QuestInactive 9001
    QuestInactive 9002
    QuestInactive 9003
    QuestInactive 9004
    QuestInactive 9005
    QuestInactive 9006
    QuestInactive 9007
    QuestInactive 9008
    QuestInactive 9009
    QuestInactive 9010
    QuestInactive 9011
    QuestInactive 9012
    ConfigKeyNot virarClasse2 true
    NpcNotNear /Chefe dos Cavaleiros/
    call {
        do move prt_in 88 101
    }
}

automacro virarCavaleiro_Começo_FalarcomNPC {
    JobLevel = 50
    JobID $paramsClasses{idC1}
    exclusive 1
    QuestInactive 9000
    QuestInactive 9001
    QuestInactive 9002
    QuestInactive 9003
    QuestInactive 9004
    QuestInactive 9005
    QuestInactive 9006
    QuestInactive 9007
    QuestInactive 9008
    QuestInactive 9009
    QuestInactive 9010
    QuestInactive 9011
    QuestInactive 9012
    NpcNotNear /Chefe dos Cavaleiros/
    call {
        do talk $.NpcNearLastBinId
        do talk resp 0 #checar a respostas!!!
        do talk resp 0 #checar as respostas!!!
        [
        log ==============================
        log Falei com o Chefe dos Cavaleiros, agora 
        log vou falar com o Cavaleiro Dedicado!
        log ==============================
        ]
    }
}
