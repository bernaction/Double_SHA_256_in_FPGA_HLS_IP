library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cycle_counter is
  Port (
    clk           : in  std_logic;
    reset         : in  std_logic;
    ap_busy_in    : in  std_logic; -- Esta será conectada ao ap_busy_out do sha256_top
    cycle_count   : out std_logic_vector(31 downto 0)
  );
end cycle_counter;

architecture Behavioral of cycle_counter is
  signal counter    : unsigned(31 downto 0) := (others => '0');
  signal reg_out    : unsigned(31 downto 0) := (others => '0');
  signal prev_ap_busy : std_logic := '0'; -- Para detectar a transição de 'ocioso' para 'ocupado'
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '0' then
        counter   <= (others => '0');
        reg_out   <= (others => '0');
        prev_ap_busy <= '0';
      else
        -- Detecta o início da execução (ap_busy_in vai de '0' para '1')
        if prev_ap_busy = '0' and ap_busy_in = '1' then
          counter <= (others => '0'); -- Reseta o contador ao iniciar a computação
          -- No seu HLS, ap_busy_out é 'true' durante a computação.
          -- No VHDL, 'true' é '1'. Então, ap_busy_in = '1' significa computando.
          -- prev_ap_busy = '0' e ap_busy_in = '1' detecta a borda de subida.
        elsif ap_busy_in = '1' then -- Enquanto o IP está ocupado (ap_busy_in é '1')
          counter <= counter + 1;
        elsif prev_ap_busy = '1' and ap_busy_in = '0' then
          -- Detecta o fim da execução (ap_busy_in vai de '1' para '0')
          reg_out <= counter; -- Captura o valor final quando a computação termina
        end if;
        -- Atualiza o estado anterior do ap_busy_in para a próxima detecção de borda
        prev_ap_busy <= ap_busy_in;
      end if;
    end if;
  end process;

  -- A saída "cycle_count" sempre reflete o último valor capturado (reg_out)
  -- Isso permite que o software leia o valor mesmo depois que o contador parou.
  cycle_count <= std_logic_vector(reg_out);
end Behavioral;