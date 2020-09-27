library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity synchronizer is
    port(
        key_status: in std_logic_vector(7 downto 0);
        -- USB
        from_usb: in std_logic;
        to_usb: out std_logic_vector(7 downto 0)
    );
end synchronizer;

architecture BHV of synchronizer is
begin

    process(from_usb)
    begin
        if from_usb = '0'  then
            for j in 0 to 7 loop
                if key_status(j) = '1' then
                    to_usb(j) <= '0';
                else
                    to_usb(j) <= '1';
                end if;
            end loop;
        else
            to_usb <= "11111111";
        end if;
    end process;

end BHV;