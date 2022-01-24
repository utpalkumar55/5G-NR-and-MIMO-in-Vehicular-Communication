number_of_data_subcarrier = 48; %% Declaring the number of data subcarriers
number_of_pilot_subcarrier = 4; %% Declaring the number of pilot subcarriers
pilot_subcarrier_indices_per_symbol = [6; 20; 33; 47]; %% Defining indices for pilot subcarriers in the resource block
data_subcarrier_indices_per_symbol = [1:5,7:19,21:32,34:46,48:52]; %% Defining indices for data subcarriers in the resource block
number_of_total_subcarrier = 52; %% Declaring total number of subcarriers
channel_bandwidth = 10e6; %% Declaring channel bandwidth in Hz
modulation_type = 1; %% Declaring modulation type [1 for QPSK]
equalizer_mode = 1; %% Declaring variable to define the mode of equalizer [1 for ZF, 2 for MMSE]
number_of_transmit_antenna = 1; %% Declaring the number of tranmit antennas
number_of_receive_antenna = 1; %% Declaring the number of receive antennas
EbNo = 0:1:20; %% Declaring SNR range for the simulation
noise_factor = 1; %% Declaring AWGN noise factor 
maximum_number_of_bits = 2e5; %% Declaring maximum number of bits to be transmitted per SNR value
doppler_effect = 100; %% Declaring doppler value in Hz
coding_rate = 1/3; %% Declaring coding rate [1/3 or 1/2]