# CSSE232-Computer-Architecture-Final-Project

To view all submodules, navigate to the `/implementation/` directory

To view the final processor, take a look in the `/implementation/Frankie/` directory

The `/design/` directory holds all documentation about our design process and decisions

Please note that we have used register files in place of Xilinx block memory. Although the manufacturing costs of so many register components is prohibitively expensive, we have chosen to leave the processor this way because it significantly simplifies testing. Specifically, text files can be read into it directly. If at any time it is desired to produce a processor in hardware, block memory could be "plugged in" where the register-based memory unit is now. (The input and output wires might need to be changed to make them the right number of bits wide, but this would cause no major changes to functionality.)
