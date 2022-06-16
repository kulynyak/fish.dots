function lsbundleid --wraps=osascript\ -e\ \ \ \ \ \ \ \ \ \'on\ run\ args\n\ \ \ \ \ \ \ \ set\ output\ to\ \{\}\n\ \ \ \ \ \ \ \ repeat\ with\ param\ in\ args\n\ \ \ \ \ \ \ \ set\ end\ of\ output\ to\ id\ of\ app\ param\n\ \ \ \ \ \ \ \ end\n\ \ \ \ \ \ \ \ set\ text\ item\ delimiters\ to\ linefeed\n\ \ \ \ \ \ \ \ output\ as\ text\n\ \ \ \ \ \ \ \ end\' --description 'Print bandle id for the (running) application'
    osascript -e 'on run args
        set output to {}
        repeat with param in args
        set end of output to id of app param
        end
        set text item delimiters to linefeed
        output as text
        end' $argv
end
