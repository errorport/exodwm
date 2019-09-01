exostat_path="$HOME/dev/exostat/exostat"

_text=""

update_text()
{
	_text=`$exostat_path`
}

while true; do
	update_text
#	xsetroot -name "$_text"
#	sleep 1
done
