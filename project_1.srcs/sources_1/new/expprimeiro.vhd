library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity expprimeiro is
    Port ( porta : in STD_LOGIC ;   -- Entrada para o estado da porta do motorista (aberto: 1 / fechado: 0)
           ignicao : in STD_LOGIC ;   -- Entrada para o estado da igni��o (ligada: 1 / desligada: 0)
           farol : in STD_LOGIC;    -- Entrada para o estado dos far�is (aceso: 1 / apagado: 0)
           alarme : out STD_LOGIC);  -- Sa�da para o sinal de ativa��o do alarme
end expprimeiro;

architecture Behavioral of expprimeiro is

begin
        -- Verifica as condi��es para ativar o alarme:
        -- (i) Quando os far�is est�o acesos e a igni��o est� desligada
        -- (ii) Quando a porta do ve�culo est� aberta e a igni��o est� ligada
        
        alarme <= (farol and (not ignicao)) or (porta and ignicao);
end Behavioral;