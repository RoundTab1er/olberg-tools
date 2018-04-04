%save data
cd([userpath '\data\' input_file_name '\processed_data']);
save([input_file_name '_processed'], 'data', 'block_data', 'sr');
save('data', 'data', 'sr');
