function cdup --description 'CD up until given folder'
	set pwd (pwd)
	set target_folder $argv[1]

	if [ ! (string match -r '/'$target_folder'/' $pwd) ]
		echo Folder $target_folder is not in the pwd: $pwd
		return
	end

	set folder_arr (string split '/' $pwd)
	
    # Reverse array and skip current folder from search
    set folder_arr $folder_arr[-2..1]
	
	set folder_count 1
	for folder in $folder_arr
		if [ $folder != $target_folder ]
			set folder_count (math $folder_count + 1);
		else
            set folder_arr $folder_arr[$folder_count..-1]
			cd (string join '/' $folder_arr[-1..1]);
			return
		end
	end
end
