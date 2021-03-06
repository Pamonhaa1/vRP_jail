local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_jail")

local Lang = module("vrp", "lib/Lang")
local cfg = module("vrp", "cfg/base")
local lang = Lang.new(module("vrp", "cfg/lang/"..cfg.lang) or {})




local choice_tpprisiona = {function(player,choice) 
  vRPclient.getNearestPlayer(player,{10},function(nplayer) 
    local nuser_id = vRP.getUserId({nplayer}) 
    if nuser_id ~= nil then 
      vRPclient.isHandcuffed(nplayer,{}, function(handcuffed)  
        if handcuffed then 
          vRPclient.teleport(nplayer,{1641.5477294922,2570.4819335938,45.564788818359})
          SetTimeout(300000, function()
            vRPclient.teleport(nplayer,{425.7607421875,-978.73425292969,30.709615707397})
            vRPclient.setHandcuffed(player,{false})
          end) 
        else 
          vRPclient.notify(player,{lang.police.not_handcuffed()})
        end  
      end) 
    else
      vRPclient.notify(player,{lang.common.no_player_near()})
    end 
  end) 

end,lang.police.menu.tpprision.description()}
--------------
-- SEND PRISONER IN JAIL FOR 10 MINUTES

          local choice_tpprisionb = {function(player,choice) -- 1. abre funcao que vai ser realizada ao clicar o botao, primeiro argumento do botao  
  vRPclient.getNearestPlayer(player,{10},function(nplayer) -- 2. abre funcao do que vai ser realizado com o nplayer - player mais proximo
    local nuser_id = vRP.getUserId({nplayer})  -- pega o id do player mais proximo
    if nuser_id ~= nil then -- 3. abre if se o id nao for nil
      vRPclient.isHandcuffed(nplayer,{}, function(handcuffed)  -- 4. here the handcuff function starts
        if handcuffed then -- 5. if the player is handcuffed
          vRPclient.teleport(nplayer,{1641.5477294922,2570.4819335938,45.564788818359})
          SetTimeout(600000, function() -- 6. TIME
            vRPclient.teleport(nplayer,{425.7607421875,-978.73425292969,30.709615707397})
            vRPclient.setHandcuffed(player,{false})
            end)
        else -- 5. otherwise
          vRPclient.notify(player,{lang.police.not_handcuffed()})
        end -- 5. End if
      end) -- 4. handcuff checking function end
    else -- 3. if you don't have a userid
      vRPclient.notify(player,{lang.common.no_player_near()})
    end -- 3. acaba if do id
  end) -- 2. end of the nearest player checking function

end,lang.police.menu.tpprision.description()} -- 1. acaba o botao e poe o segundo argumento, a descricao.
----------------------------
-- SEND PRISONER IN JAIL FOR 15 MINUTES

     local choice_tpprisionc = {function(player,choice) -- 1. abre funcao que vai ser realizada ao clicar o botao, primeiro argumento do botao  
  vRPclient.getNearestPlayer(player,{10},function(nplayer) -- 2. abre funcao do que vai ser realizado com o nplayer - player mais proximo
    local nuser_id = vRP.getUserId({nplayer})  -- pega o id do player mais proximo
    if nuser_id ~= nil then -- 3. abre if se o id nao for nil
      vRPclient.isHandcuffed(nplayer,{}, function(handcuffed)  -- 4. abre funcao que checa se o usuario ta algemado devolve true or false na variavel da function
        if handcuffed then -- 5. abre if algemado
          vRPclient.teleport(nplayer,{1641.5477294922,2570.4819335938,45.564788818359})
          SetTimeout(900000, function() -- 6. abre funcao de timeout
            vRPclient.teleport(nplayer,{425.7607421875,-978.73425292969,30.709615707397})
            vRPclient.setHandcuffed(player,{false})
        end) -- 6. acaba a funcao de timeout
        else -- 5. se nao estiver
          vRPclient.notify(player,{lang.police.not_handcuffed()})
        end -- 5. termina if
      end) -- 4. acaba a funcao de checar algemado
    else -- 3. se nao tiver user id
      vRPclient.notify(player,{lang.common.no_player_near()})
    end -- 3. acaba if do id
  end) -- 2. acaba a funcao do player mais proximo

end,lang.police.menu.tpprision.description()} -- 1. acaba o botao e poe o segundo argumento, a descricao.



-- SEND PRISONER IN JAIL FOR 25 MINUTES
local choice_tpprision = {function(player,choice) -- 1. abre funcao que vai ser realizada ao clicar o botao, primeiro argumento do botao  
  vRPclient.getNearestPlayer(player,{10},function(nplayer) -- 2. abre funcao do que vai ser realizado com o nplayer - player mais proximo
    local nuser_id = vRP.getUserId({nplayer})  -- pega o id do player mais proximo
    if nuser_id ~= nil then -- 3. abre if se o id nao for nil
      vRPclient.isHandcuffed(nplayer,{}, function(handcuffed)  -- 4. abre funcao que checa se o usuario ta algemado devolve true or false na variavel da function
        if handcuffed then -- 5. abre if algemado
          vRPclient.teleport(nplayer,{1641.5477294922,2570.4819335938,45.564788818359})
          SetTimeout(1500000, function() -- 6. abre funcao de timeout
            vRPclient.teleport(nplayer,{425.7607421875,-978.73425292969,30.709615707397})
            vRPclient.setHandcuffed(player,{false})
        end) -- 6. acaba a funcao de timeout
        else -- 5. se nao estiver
          vRPclient.notify(player,{lang.police.not_handcuffed()})
        end -- 5. termina if
      end) -- 4. acaba a funcao de checar algemado
    else -- 3. se nao tiver user id
      vRPclient.notify(player,{lang.common.no_player_near()})
    end -- 3. acaba if do id
  end) -- 2. acaba a funcao do player mais proximo

end,lang.police.menu.tpprision.description()} -- 1. acaba o botao e poe o segundo argumento, a descricao.




-- REGISTER POLICE MENU CHOICES
vRP.registerMenuBuilder({"police", function(add, data)
  local user_id = vRP.getUserId({data.player})
  if user_id ~= nil then
    local choices = {}


    if vRP.hasPermission({user_id,"police.tpprisiona"}) then
      choices["Big Prison 5 minutes"] = choice_tpprisiona -- 5 MINUTES
    end


    if vRP.hasPermission({user_id,"police.tpprisionb"}) then
      choices["Big Prison 10 minutes"] = choice_tpprisionb -- 10 MINUTES
    end

    if vRP.hasPermission({user_id,"police.tpprisionc"}) then
      choices["Big Prison 15 minutes"] = choice_tpprisionc -- 15 MINUTES
    end


    if vRP.hasPermission({user_id,"police.tpprision"}) then
      choices["Big Prison 25 minutes"] = choice_tpprision -- 25 MINUTES
    end
    add(choices)
  end
end})
