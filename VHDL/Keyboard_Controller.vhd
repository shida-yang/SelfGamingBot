library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Keyboard_Controller is
    port(
        -- CPU
        strobe: in std_logic;
        pressing: in std_logic;
        key_map_in: in std_logic_vector(7 downto 0);

        -- USB
        from_usb: in std_logic_vector(17 downto 0);
        to_usb: out std_logic_vector(7 downto 0)
    );
end Keyboard_Controller;

architecture BHV of Keyboard_Controller is
    type MEMORY is array(0 to 17) of std_logic_vector(7 downto 0);
    signal key_status, to_usb_array, to_usb_and_temp: MEMORY;
begin

    -- CPU press or release a key
    -- key_map_in format: RRRCCCCC
    process(strobe)
    begin
        if rising_edge(strobe) then
            key_status(to_integer(unsigned(key_map_in(4 downto 0))))(to_integer(unsigned(key_map_in(7 downto 5)))) <= pressing;
        end if;
    end process;

    U_SYNC: for i in 0 to 17 generate
        U_SINGLE_SYNC: entity work.synchronizer
            port map(
                key_status => key_status(i),
                -- USB
                from_usb => from_usb(i),
                to_usb => to_usb_array(i)
            );
    end generate U_SYNC;

    -- Anding the output
    to_usb_and_temp(0) <= to_usb_array(0);
    U_TO_USB_ARRAY_AND: for i in 1 to 17 generate
        to_usb_and_temp(i) <= to_usb_and_temp(i-1) and to_usb_array(i);
    end generate U_TO_USB_ARRAY_AND; 
    to_usb <= to_usb_and_temp(17); 

end BHV;