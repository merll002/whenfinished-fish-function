function whenfinished
    if test (count $argv) -lt 2
        echo "Usage: whenfinished <process name> [command to run when finished]"
        return 1
    end

    while true; if pgrep $argv[1] >/dev/null; else; $argv[2..-1]; break; end; sleep 0.2; end
end
