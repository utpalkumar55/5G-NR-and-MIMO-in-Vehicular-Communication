function equalized_data = ZF_Equalize(processed_ofdm_demodulated_data, channel_estimation_matrix)

    data_length = size(processed_ofdm_demodulated_data, 1);
    equalized_data = complex(zeros(size(processed_ofdm_demodulated_data)));
    for n = 1:data_length
        h = squeeze(channel_estimation_matrix(n, :, :));
        h = h.';
        x = h \ (processed_ofdm_demodulated_data(n, :).');
        equalized_data(n, :) = x.';
    end

end