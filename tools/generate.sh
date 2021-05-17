#!/bin/zsh

guilds=(
	'starship 675754989'
)
	
for g in $guilds ; do 
	args=("${(@s/ /)g}")
	echo "==============="
	echo "$args[1]"

	echo "~/bin/swgoh-tool --fetch $args[2] $args[1]"
	time ~/bin/swgoh-tool --fetch $args[2] $args[1] || exit 1
	
	echo "~/bin/swgoh-tool --guild $args[1].json --site docs"
	time ~/bin/swgoh-tool --guild $args[1].json --unbrand --site docs
done

echo "==============="
echo "ALLIANCE"

time ~/bin/swgoh-tool --unbrand --alliance docs *.json
