function rm-relocated --wraps=rm\ \$HOME/Desktop/Relocated\\\ Items.nosync\ \&\&\ rm\ /Users/Shared/Relocated\\\ Items --description 'remove relocated files after update'
    rm $HOME/Desktop/Relocated\ Items.nosync && rm /Users/Shared/Relocated\ Items $argv
end
