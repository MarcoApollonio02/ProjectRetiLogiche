-- codice progetto di reti logiche scritto da
-- Bossi Giacomo (10766073
-- Apollonio Marco (10764083)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity project_reti_logiche is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_add : in std_logic_vector(15 downto 0);
        i_k   : in std_logic_vector(9 downto 0);
        
        o_done : out std_logic;
        
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in  std_logic_vector(7 downto 0);
        o_mem_data : out std_logic_vector(7 downto 0);
        o_mem_we   : out std_logic;
        o_mem_en   : out std_logic
        
        --num_state  : out std_logic_vector(3 downto 0) debug value
        );
end project_reti_logiche;

architecture project_reti_logiche_arch of project_reti_logiche is
    -- S : enumerazione che serve per rappresentare gli stati delle diverse fsm
    type S is (
        Status_Init, --S0
        Status_Start, --S1
        Status_Load, --S2
        Status_Read_W, --S3
        Status_Read_0, --S4
        Status_Read_Not_0, --S5
        Status_Increase_Add_0, --S6
        Status_Write_Credibility, --S7
        Status_Increase_Add_Even, --S8
        Status_End --S9
    );
    
    -- variabili che faranno da stato corrente delle diverse fsm
    
    -- stati del controllore principale, questo genererï¿½ dei segnali agli altri componenti
    -- per permettere l'avanzamento dell'esecuzione
    signal controller_state : S;
    
    -- stati del componente che esegue le somme per l'accesso ai diversi byte della memoria ram
    --signal counterAdd_state : S;
    
    -- stati del componente che conta il numero di dati ancora da leggere
    --signal counterK_state : S;
    
    -- stati del componente che andrï¿½ a salvare nella memoria ram nelle posizioni pari i valori di credibility
    --signal credibility_state : S;
    
    -- stati del componente che salva l'ultimo valore letto dalla memoria ram nelle posizioni dispari
    -- lvr: last valid reading
    --signal lvr_state: S;
    
    --vedere se fare anche il lettura zero
    --vedere se fare anche il temp memory
    --per il mux basta solo un segnale in uscita
    
    --Lista segnali in uscita verso i componenti dal controllore principale
    
    --Segnali in ingresso a CounterAdd
    signal loadAdd : std_logic;
    signal increaseAdd : std_logic;
    
    --Segnali in ingresso a CounterK
    signal loadK : std_logic;
    signal decreaseK: std_logic;
    
    signal end_o : std_logic;
   

    --Segnali in ingresso a Zero Reading
    signal zero_read : std_logic;

    --Segnali in ingresso a Temp Memory
    --signal read_mem : std_logic;

    --Segnale selettore per il Mux
    signal mux_selector : std_logic;
    --Segnali in ingresso a Last Valid Reading
    signal i_read : std_logic;
    signal i_word:  std_logic_vector(7 downto 0);
            
    signal o_wordLvr : std_logic_vector(7 downto 0);
    --Segnali in ingresso a Last Valid Reading e Credibility
    signal i_set0: std_logic;
    
    --Segnali in ingresso a Credibility
    signal i_set31: std_logic;
    signal i_dcrCredibility: std_logic;
    signal o_wordCredibility : std_logic_vector(7 downto 0);
    
    component CounterAdd is
        Port (
            i_clk : in std_logic;
            loadAdd : in std_logic;
            increaseAdd: in std_logic;
            i_add: in std_logic_vector(15 downto 0);
            add: out std_logic_vector(15 downto 0)
        );      
    
    end component CounterAdd;
    
    component CounterK is
        port(
            i_clk : in std_logic;
            i_k : in std_logic_vector( 9 downto 0);
            loadK : in std_logic;
            decreaseK : in std_logic;
            
            end_o : out std_logic
        );
    end component CounterK;
    
    component ZeroReading is
        port(
            i_mem_data : in  std_logic_vector(7 downto 0);
        
            zero_read : out std_logic
        );
    end component ZeroReading;
    
    component Mux is
        port(
            i_Lvr : in std_logic_vector(7 downto 0);
            i_Credibility : in std_logic_vector(7 downto 0);
            mux_selector : in std_logic;
            
            o_mux : out std_logic_vector(7 downto 0)
        );
        
    end component Mux;
    
    component LVR is
        port(
            i_clk : in std_logic;
            i_set0 : in std_logic;
            i_read : in std_logic;
            i_word: in std_logic_vector(7 downto 0);
            
            o_wordLvr : out std_logic_vector(7 downto 0)
        );
    end component LVR;
    
    component CredibilityT is
        port(
            i_clk : in std_logic;
            i_set0 : in std_logic;
            i_set31 : in std_logic;
            i_dcrCredibility : in std_logic;
            
            o_wordCredibility : out std_logic_vector(7 downto 0)
        );
    end component CredibilityT;
    
    
begin

    --assegnazione segnali interni con segnali componenti
    --CounterAdd
    CounterAdd_inst : CounterAdd port map(
        i_clk => i_clk,
        loadAdd => loadAdd,
        increaseAdd => increaseAdd,
        i_add => i_add,
        add => o_mem_addr
    );

    --CounterK
    CounterK_inst : CounterK port map(
        i_clk => i_clk,
        i_k => i_k,
        loadK => loadK,
        decreaseK => decreaseK,
        end_o => end_o
    );

    --ZeroReading
    ZeroReading_inst : ZeroReading port map(
        i_mem_data => i_mem_data,
        zero_read => zero_read
    );

    --LVR
    LVR_inst : LVR port map(
        i_clk => i_clk,
        i_set0 => i_set0,
        i_read => i_read,
        i_word => i_mem_data,
        o_wordLvr => o_wordLvr
        
    );

    --Credibility
    Credibility_inst : CredibilityT port map(
        i_clk => i_clk,
        i_set0 => i_set0,
        i_set31 => i_set31,
        i_dcrCredibility => i_dcrCredibility,
        o_wordCredibility => o_wordCredibility
        
    );


    --Mux
    Mux_inst : Mux port map(
        i_Lvr => o_wordLvr,
        i_Credibility => o_wordCredibility,
        mux_selector => mux_selector,
        o_mux => o_mem_data
    );

    --implementazione macchina a stati del controllore principale
    --e corrispettivi segnali in ingresso e in uscita che cambiano

    --segnali in ingresso a controller fsm
    --i_clk
    --i_start
    --i_rst
    --end_o
    --zero_read

    --segnali in uscita da controller fsm che vanno ai componenti
    --loadAdd
    --increaseAdd
    --loadK
    --decreaseK
    --read_mem
    --i_read
    --i_set0
    --i_set31
    --i_dcrCredibility

    -- segnali in uscita da controller fsm che escono dalla macchina e vanno verso la ram
    -- oppure segnali di fine elaborazione
    --o_mem_we
    --o_mem_en
    --o_done

    -----------------------------------------------------------------
    
    --fsm del controllore è una macchina di Moore
    controller_fsm : process(i_clk, i_rst)
    begin

        --stato del reset asincrono
        if(i_rst = '1') then
            controller_state <= Status_Init;
            loadAdd <= '0';
            increaseAdd <= '0';
            loadK <= '0';
            decreaseK <= '0'; 
            mux_selector <= '0';
            i_read <= '0';
            i_set0 <= '0';
            i_set31 <= '0';
            i_dcrCredibility <= '0';
            o_mem_we <= '0';
            o_mem_en <= '0';
            o_done <= '0';
        
        --inizio con il controllo del clock sul fronte di discesa
        
        elsif falling_edge(i_clk) then
            case controller_state is
            
                when Status_Init =>
                
                    controller_state <= Status_Start;

                    --segnali attivi:
                    --i_set_0
            
                    loadAdd <= '0';
                    increaseAdd <= '0';
                    loadK <= '0';
                    decreaseK <= '0';
                    mux_selector <= '0';
                    i_read <= '0';
                    i_set0 <= '1';
                    i_set31 <= '0';
                    i_dcrCredibility <= '0';
                    o_mem_we <= '0';
                    o_mem_en <= '0';
                    o_done <= '0';
            
                when Status_Start =>
                    if(i_start = '1') then
                        controller_state <= Status_Load;

                        --segnali attivi:
                        --loadAdd
                        --loadK


                        loadAdd <= '1';
                        increaseAdd <= '0';
                        loadK <= '1';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '0';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '0';
                        o_done <= '0';
                    
                    elsif( i_start = '0') then
                        controller_state <= Status_Start;

                        --segnali attivi:
                        --i_set_0

                        loadAdd <= '0';
                        increaseAdd <= '0';
                        loadK <= '0';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '1';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '0';
                        o_done <= '0';
                    end if;
                when Status_Load =>
                    if(end_o = '1') then
                        controller_state <= Status_End;
                        
                        --segnali attivi:
                        --o_done

                        loadAdd <= '0';
                        increaseAdd <= '0';
                        loadK <= '0';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '0';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '0';
                        o_done <= '1';

                    elsif(end_o = '0') then
                        controller_state <= Status_Read_W;

                        --segnali attivi:
                        --o_mem_en

                        loadAdd <= '0';
                        increaseAdd <= '0';
                        loadK <= '0';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '0';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '1';
                        o_done <= '0';
                    end if;

                when Status_Read_W =>
                    if(zero_read = '1') then
                        controller_state <= Status_Read_0;

                        --segnali attivi:
                        --o_mem_we
                        --o_mem_en

                        loadAdd <= '0';
                        increaseAdd <= '0';
                        loadK <= '0';
                        decreaseK <= '0';
                        -- selettore del mux sul valore del LVR
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '0';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '1';
                        o_mem_en <= '1';
                        o_done <= '0';

                    elsif(zero_read = '0') then
                        controller_state <= Status_Read_Not_0;

                        --segnali attivi:
                        --increaseAdd
                        --i_read
                        --i_set31

                        loadAdd <= '0';
                        increaseAdd <= '1';
                        loadK <= '0';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '1';
                        i_set0 <= '0';
                        i_set31 <= '1';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '0';
                        o_done <= '0';
                    end if;
                when Status_Read_0 =>
                    controller_state <= Status_Increase_Add_0;
                    
                    --segnali attivi:
                    --increaseAdd
                    --i_dcrCredibility
                        
                    loadAdd <= '0';
                    increaseAdd <= '1';
                    loadK <= '0';
                    decreaseK <= '0';
                    mux_selector <= '0';
                    i_read <= '0';
                    i_set0 <= '0';
                    i_set31 <= '0';
                    i_dcrCredibility <= '1';
                    o_mem_we <= '0';
                    o_mem_en <= '0';
                    o_done <= '0';

                when Status_Read_Not_0 =>
                    controller_state <= Status_Write_Credibility;
                    
                    --segnali attivi:
                    --decreaseK
                    --mux_selector: selettore del mux sul valore del credibility
                    --o_mem_we
                    --o_mem_en

                    loadAdd <= '0';
                    increaseAdd <= '0';
                    loadK <= '0';
                    decreaseK <= '1';
                    mux_selector <= '1';
                    i_read <= '0';
                    i_set0 <= '0';
                    i_set31 <= '0';
                    i_dcrCredibility <= '0';
                    o_mem_we <= '1';
                    o_mem_en <= '1';
                    o_done <= '0';

                when Status_Increase_Add_0 =>
                    controller_state <= Status_Write_Credibility;
                    
                    --segnali attivi:
                    --decreaseK
                    --mux_selector: selettore del mux sul valore del credibility
                    --o_mem_we
                    --o_mem_en

                    loadAdd <= '0';
                    increaseAdd <= '0';
                    loadK <= '0';
                    decreaseK <= '1';
                    mux_selector <= '1';
                    i_read <= '0';
                    i_set0 <= '0';
                    i_set31 <= '0';
                    i_dcrCredibility <= '0';
                    o_mem_we <= '1';
                    o_mem_en <= '1';
                    o_done <= '0';

                when Status_Write_Credibility =>
                    if(end_o = '1') then
                        controller_state <= Status_End;

                        --segnali attivi:
                        --o_done

                        loadAdd <= '0';
                        increaseAdd <= '0';
                        loadK <= '0';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '0';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '0';
                        o_done <= '1';

                    elsif (end_o = '0') then
                        controller_state <= Status_Increase_Add_Even;

                        --segnali attivi:
                        --increaseAdd

                        loadAdd <= '0';
                        increaseAdd <= '1';
                        loadK <= '0';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '0';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '0';
                        o_done <= '0';

                    end if;
                
                when Status_Increase_Add_Even =>
                    controller_state <= Status_Read_W;
                    
                    --segnali attivi:
                    --o_mem_en
                    
                    loadAdd <= '0';
                    increaseAdd <= '0';
                    loadK <= '0';
                    decreaseK <= '0';
                    mux_selector <= '0';
                    i_read <= '0';
                    i_set0 <= '0';
                    i_set31 <= '0';
                    i_dcrCredibility <= '0';
                    o_mem_we <= '0';
                    o_mem_en <= '1';
                    o_done <= '0';

                when Status_End =>
                    if(i_start = '1') then
                        controller_state <= Status_End;

                        --fine dell'eseuzione: done ad alto fino a quando non viene abbassato il segnale di start
                        --segnali attivi:
                        --o_done
                        
                        loadAdd <= '0';
                        increaseAdd <= '0';
                        loadK <= '0';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '0';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '0';
                        o_done <= '1';

                    elsif (i_start = '0') then
                        controller_state <= Status_Start;

                        --segnali attivi:
                        --i_set_0

                        loadAdd <= '0';
                        increaseAdd <= '0';
                        loadK <= '0';
                        decreaseK <= '0';
                        mux_selector <= '0';
                        i_read <= '0';
                        i_set0 <= '1';
                        i_set31 <= '0';
                        i_dcrCredibility <= '0';
                        o_mem_we <= '0';
                        o_mem_en <= '0';
                        o_done <= '0';
                    end if;
                when others =>
                    controller_state <= Status_Init;
            end case;

        end if;


    end process;

    --process(controller_state)
    --begin
    --case controller_state is
    --    when Status_Init =>
    --        num_state <= "0000";        
    --    when Status_Start =>
    --        num_state <= "0001";
    --    when Status_Load =>
    --        num_state <= "0010";
    --    when Status_Read_W =>
    --        num_state <= "0011";
    --    when Status_Read_0 =>
    --        num_state <= "0100";
    --    when Status_Read_Not_0 =>
    --        num_state <= "0101";
    --    when Status_Increase_Add_0 =>
    --        num_state <= "0110";
    --    when Status_Write_Credibility =>
    --        num_state <= "0111";
    --    when Status_Increase_Add_Even =>
    --        num_state <= "1000";
    --    when Status_End =>
    --        num_state <= "1001";
    --    when others =>
    --        num_state <= "XXXX";
    --    end case;
    --            
    --end process;

end project_reti_logiche_arch;

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity CounterAdd is
    Port (
        i_clk : in std_logic;
        loadAdd : in std_logic;
        increaseAdd: in std_logic;
        i_add: in std_logic_vector(15 downto 0);
        add: out std_logic_vector(15 downto 0)
    );
end CounterAdd;

architecture CounterAdd_arch of CounterAdd is
    type S is (
        Status_Init, 
        Status_Read_Add, 
        Status_Idle, 
        Status_Increase_Add
    );
    signal counterAdd_state: S;
    signal count: std_logic_vector(15 downto 0):= (others=>'0');
    
begin

    state_proc : process(i_clk, loadAdd, increaseAdd)
    begin
        if(rising_edge(i_clk)) then
            
            case loadAdd is
                when '0' =>
                    case increaseAdd is
                        when '0' =>
                            case counterAdd_state is
                                --autoanello
                                when Status_Init =>
                                    counterAdd_state <= Status_Init;
                                --transizione in Status_Idle
                                when Status_Read_Add =>
                                    counterAdd_state <= Status_Idle;
                                --autoanello
                                when Status_Idle =>
                                    counterAdd_state <= Status_Idle;
                                --transizione in Status_Idle
                                when Status_Increase_Add =>
                                    counterAdd_state <= Status_Idle;
                                    
                                -- se altri valori allora errore (ritorno a Status_Init)
                                when others =>
                                    counterAdd_state <= Status_Init;
                            end case;     
                        when '1' =>
                            case counterAdd_state is
                                --non si dovrebbe verificare
                                when Status_Init =>
                                    counterAdd_state <= Status_Init;
                                --non si dovrebbe verificare
                                when Status_Read_Add =>
                                    counterAdd_state <= Status_Init;
                                --transizione in Status_Increase_Add
                                --piÃ¹ incremento del segnale interno count di 1
                                when Status_Idle =>
                                    counterAdd_state <= Status_Increase_Add;
                                    count <= count + '1';
                                --autoanello
                                when Status_Increase_Add =>
                                    counterAdd_state <= Status_Increase_Add;
                                
                                -- se altri valori allora errore (ritorno a Status_Init)
                                when others =>
                                    counterAdd_state <= Status_Init;
                            end case;
                        -- se altri valori allora errore (ritorno a Status_Init)
                        when others =>
                            counterAdd_state <= Status_Init;
                    end case;
                    
                when '1' =>
                    -- richiesta di load del dato
                    case increaseAdd is
                        when '0' =>
                            case counterAdd_state is
                                --transizione in Status_Read_Add
                                when Status_Init =>
                                    counterAdd_state <= Status_Read_Add;
                                    count <= i_add;
                                --autoanello
                                when Status_Read_Add =>
                                    counterAdd_state <= Status_Read_Add;
                                    count <= i_add;
                                --transizione in Status_Read_Add
                                when Status_Idle =>
                                    counterAdd_state <= Status_Read_Add;
                                    count <= i_add;
                                --transizione in Status_Read_Add
                                when Status_Increase_Add =>
                                    counterAdd_state <= Status_Read_Add;
                                    count <= i_add;
                                when others =>
                                    counterAdd_state <= Status_Init;
                            end case;
                        -- se altri valori allora errore (ritorno a Status_Init)
                        -- anche con '1' increase e load non devono essere entrambi attivi
                        -- ambiguo
                        when others =>
                            counterAdd_state <= Status_Init;
                        end case;
                -- se altri valori allora errore (ritorno a Status_Init)
                when others =>
                    counterAdd_state <= Status_Init;       
            end case;           
        end if; 
    
    end process;
    
    add <= count;
    
end CounterAdd_arch;

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CounterK is
    port(
        i_clk : in std_logic;
        i_k : in std_logic_vector( 9 downto 0);
        loadK : in std_logic;
        decreaseK : in std_logic;
        
        end_o : out std_logic
    );
end CounterK;

architecture CounterK_arch of CounterK is
    
    type S is (
        Status_Init,
        Status_Read_K,
        Status_Idle,
        Status_Decrease_K,
        Status_Rise_End
    );
    signal counterK_state : S;
    --inizializzo tutto a 1 perchè inizializzando tutto a 0 alzerei end_o e non va bene
    --tanto fino a quando non carico i_k non devo fare niente
    signal k : std_logic_vector( 9 downto 0):= (others=>'1');
    
begin

    counterK_state_process : process(i_clk, loadK, decreaseK, k)
    begin
    
        --controllo se k è uguale a 0
        --asincrono
        if(k = "0000000000") then
            counterK_state <= Status_Rise_End;
            end_o <= '1';
        else
            end_o <= '0';
        end if;
        
        if(rising_edge(i_clk)) then
            
            case loadK is
                when '0'=>
                    case decreaseK is
                        when '0' =>
                            case counterK_state is
                                when Status_Init =>
                                    counterK_state <= Status_Init;
                                when Status_Read_K =>
                                    counterK_state <= Status_Idle;
                                when Status_Idle =>
                                    counterK_state <= Status_Idle;
                                when Status_Decrease_K =>
                                    counterK_state <= Status_Idle;
                                when Status_Rise_End =>
                                    counterK_state <= Status_Rise_End;
                            end case;
                    
                        when '1' =>
                            case counterK_state is
                                -- non si dovrebbe verificare
                                when Status_Init =>
                                    counterK_state <= Status_Init;
                                -- non si dovrebbe verificare
                                when Status_Read_K =>
                                    counterK_state <= Status_Init;
                                --transizione in Status_Decrease_K
                                --decremento di k di 1
                                when Status_Idle =>
                                    counterK_state <= Status_Decrease_K;
                                    k <= k - '1';      
                                -- autoanello
                                when Status_Decrease_K =>
                                    counterK_state <= Status_Decrease_K;
                                --non si deve verificare
                                when Status_Rise_End =>
                                    counterK_state <= Status_Init;
                            end case;

                        -- se altri valori allora errore (ritorno a Status_Init)
                        when others =>
                            counterK_state <= Status_Init;
                    end case;
                    
                when '1' =>
                    -- indipendendte da tutti se sono in un qualsiasi stato e mi viene
                    -- richiesto di fare il load faccio il load
                    case decreaseK is
                        when '0' =>
                            case counterK_state is
                                when Status_Init =>
                                    counterK_state <= Status_Read_K;
                                    k <= i_k;
                                when Status_Read_K =>
                                    counterK_state <= Status_Read_K;
                                    k <= i_k;
                                when Status_Idle =>
                                    counterK_state <= Status_Read_K;
                                    k <= i_k;
                                when Status_Decrease_K =>
                                    counterK_state <= Status_Read_K;
                                    k <= i_k;
                                when Status_Rise_End =>
                                    counterK_state <= Status_Read_K;
                                    k <= i_k;
                            end case;
                        
                        -- se altri valori allora errore (ritorno a Status_Init)
                        -- anche con '1' decrease e load non devono essere entrambi attivi
                        -- ambiguo
                        when others =>
                            counterK_state <= Status_Init;
                        end case;
                -- se altri valori allora errore (ritorno a Status_Init)
                when others =>
                    counterK_state <= Status_Init;
            end case;
        end if;
    
    
    
    end process counterK_state_process;
    
end CounterK_arch;

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux is
    port(
            i_Lvr : in std_logic_vector(7 downto 0);
            i_Credibility : in std_logic_vector(7 downto 0);
            mux_selector : in std_logic;
            
            o_mux : out std_logic_vector(7 downto 0)
        );
end Mux;

architecture Mux_arch of Mux is
begin
    process(mux_selector, i_Lvr, i_Credibility)
    begin
        case mux_selector is
            when '0' =>
                o_mux <= i_Lvr;
            when '1' =>
                o_mux <= i_Credibility;
            -- se altri valori allora errore: setta valori in uscita a 'X'
            when others =>
                o_mux <= (others => 'X');
        end case;
    end process;
end Mux_arch;

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ZeroReading is
    port(
            i_mem_data : in  std_logic_vector(7 downto 0);
        
            zero_read : out std_logic
        );
end ZeroReading;

architecture ZeroReading_arch of ZeroReading is

begin
    zero_read <= '1' when i_mem_data = "00000000" else '0';

end ZeroReading_arch;

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CredibilityT is
    Port (
        i_clk : in std_logic;
        i_dcrCredibility : in std_logic;
        i_set31 : in std_logic;
        i_set0 : in std_logic; 
        
        o_wordCredibility : out std_logic_vector (7 downto 0)); --priority implemented i_set31->i_set0->dcr
end CredibilityT;

architecture CredibilityT_arch of CredibilityT is

    component FlipFlopT is                                              --default state is zero
        Port ( i_clk, i_toggle : in std_logic; o_value : out std_logic);
    end component;
    
    constant msb : std_logic_vector(2 downto 0) := "000";
    
    signal togg : std_logic_vector(4 downto 0) := "00000";  --gives the toggle signal the flipflops
    
    signal notzero :std_logic :='0';  --checks if the word stored is non zero
    
    signal enabled_dcr : std_logic := '0'; 
    
    signal word :std_logic_vector(4 downto 0);
    
    signal minus: std_logic_vector(4 downto 0);
    
begin
    t0 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(0),o_value=>word(0));   --are rising edge triggered
    t1 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(1),o_value=>word(1));
    t2 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(2),o_value=>word(2));
    t3 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(3),o_value=>word(3));
    t4 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(4),o_value=>word(4));
    
    o_wordCredibility(7 downto 5)<=msb;
    o_wordCredibility(4 downto 0)<=word(4 downto 0);
    
    notzero<= word(0)or word(1)or word(2)or word(3)or word(4);
    enabled_dcr <= notzero and i_dcrCredibility;
    
    minus(0)<='1';                               --parallel implementation of decreasing counter with T flip flops (5 bits) 
    minus(1)<=not word(0);                       --the vector minus contains the values for the T flops to decrease the counter by one
    minus(2)<=(not word(0)) and (not word(1));
    minus(3)<=(not word(0)) and (not word(1))and (not word(2));
    minus(4)<=(not word(0)) and (not word(1))and (not word(2))and (not word(3));
    
    
    action: process(i_clk,i_set31, i_set0, enabled_dcr)
    begin
        if i_set31 = '1'  then          --if it is zero toggle
            togg(0) <= not word(0);
            togg(1) <= not word(1);
            togg(2) <= not word(2);
            togg(3) <= not word(3);
            togg(4) <= not word(4);
            
        elsif i_set31 = '0' and i_set0 = '1' then      --if it is one toggle
            togg(0) <= word(0);
            togg(1) <= word(1);
            togg(2) <= word(2);
            togg(3) <= word(3);
            togg(4) <= word(4);
            
        elsif enabled_dcr = '1' and i_set31 = '0' and i_set0 = '0' then --pass the values of toggle to the flipflops for a decrease       
            togg(0) <= minus(0);
            togg(1) <= minus(1);
            togg(2) <= minus(2);
            togg(3) <= minus(3);
            togg(4) <= minus(4);
            
        elsif enabled_dcr = '0' and i_set31 = '0' and i_set0 = '0' then --don't change anything
            togg(0) <= '0';
            togg(1) <= '0';
            togg(2) <= '0';
            togg(3) <= '0';
            togg(4) <='0';
        end if;
    end process;

end CredibilityT_arch;

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlopT is
    Port( 
        i_clk : in std_logic;
        i_toggle : in std_logic;
        o_value : out std_logic
    );
end FlipFlopT;

architecture FlipFlopT_arch of FlipFlopT is
    
    signal state: std_logic :='0'; 
    
begin
    o_value <= state;
    
    update : process (i_clk)
    begin
        if i_clk'event and i_clk = '1' then
            if i_toggle = '1' then
                if state = '1'then
                    state <= '0';
                elsif state = '0' then
                    state <= '1';
                end if;
            end if;
        end if;
    end process;
        

end FlipFlopT_arch;

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LVR is
  Port(
        i_clk: in std_logic;
        i_set0: in std_logic;
        i_read : in std_logic;
        i_word : in std_logic_vector(7 downto 0);
        o_wordLvr : out std_logic_vector(7 downto 0)
    );
end LVR;

architecture LVR_arch of LVR is

signal saved : std_logic_vector(7 downto 0);

begin
    
    o_wordLvr <= saved;
    
    action: process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_set0  = '1' then
                saved <= "00000000";
            elsif i_set0 = '0' and i_read = '1' then
                saved <= i_word;
            end if;
        end if;
    end process;
                

end LVR_arch;