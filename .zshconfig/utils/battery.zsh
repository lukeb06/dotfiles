function battery_is_charging() {
    ioreg -rc AppleSmartBattery | command grep -q '^.*"ExternalConnected"\ =\ Yes'
}
function battery_pct() {
    pmset -g batt | grep -Eo "\d+%" | cut -d% -f1
}
function battery_pct_remaining() {
    if battery_is_charging; then
        echo "External Power"
    else
        battery_pct
    fi
}
function battery_time_remaining() {
    local smart_battery_status="$(ioreg -rc "AppleSmartBattery")"
    if [[ $(echo $smart_battery_status | command grep -c '^.*"ExternalConnected"\ =\ No') -eq 1 ]]; then
        timeremaining=$(echo $smart_battery_status | command grep '^.*"AvgTimeToEmpty"\ =\ ' | sed -e 's/^.*"AvgTimeToEmpty"\ =\ //')
        if [ $timeremaining -gt 720 ]; then
            echo "::"
        else
            echo "~$((timeremaining / 60)):$((timeremaining % 60))"
        fi
    else
        echo "∞"
    fi
}
function battery_pct_prompt () {
    local battery_pct color
    if ioreg -rc AppleSmartBattery | command grep -q '^.*"ExternalConnected"\ =\ No'; then
        battery_pct=$(battery_pct_remaining)
        if [[ $battery_pct -gt 50 ]]; then
            color='green'
        elif [[ $battery_pct -gt 20 ]]; then
            color='yellow'
        else
            color='red'
        fi
        echo "%{$fg[$color]%}[${battery_pct}%%]%{$reset_color%}"
    else
        echo "${BATTERY_CHARGING-⚡️}"
    fi
}

