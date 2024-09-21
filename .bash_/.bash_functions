#!/bin/bash
# sorry for hashbang, it's just for correct language determining by npp

# source functions for WSL
if [ -f "${HOME}/.bash_functions_wsl" ]; then
  source "${HOME}/.bash_functions_wsl"
fi


mkcd() {
    mkdir -p "${1}"
    cd "${1}"
}

diffdirs() {
	[[ $# -ne 2 ]] \
		&& echo "$FUNCNAME requires two arguments (paths to dirs)" >&2 \
		&& return 2
	diff \
		<(find "$1" -type d -printf "%P\n" | sort) \
		<(find "$2" -type d -printf "%P\n" | sort)
}

diffdirf() {
	[[ $# -ne 2 ]] \
		&& echo "$FUNCNAME requires two arguments (paths to dirs)" >&2 \
		&& return 2
	rsync -nrlcv --delete "$1"/ "$2"/ \
		| sed 1d | sed \$d | sed \$d | sed \$d \
		| sed 's/^deleting /> /' | sed 's/^\([^>][^ ]\)/< \1/'
}

dump_array() {
    is_array $1 || return 1
    local -n arr=$1
    for key in ${!arr[@]}; do
        echo $key '->' ${arr[$key]}
    done
}
is_array() {
    declare -p $1 1>/dev/null 2>/dev/null && return 0
    return 1
}
# target=(); copy_array sorce target
copy_array() {
	is_array $1 || return 1
	is_array $2 || return 2
    local -n src=$1
    local -n cpy=$2
    for key in ${!src[@]}; do
		cpy[$key]="${src[$key]}"
    done
}
arr_len() {
    is_array $1 || return 1
    local -n arr=$1
	echo ${#arr[@]}
}
# push arr elements
push() {
    is_array $1 || return 1
    local -n arr=$1
    args=("$@"); arr=("${arr[@]}" "${args[@]:1}")
}
# last=$(pop arr)
pop() {
    is_array $1 || return 1
    local -n arr=$1
    echo "${arr[@]: -1}"
    arr=("${arr[@]:0:$((${#arr[@]}-1))}")
}
# first=$(shft arr)
shft() {
    is_array $1 || return 1
    local -n arr=$1
    echo "$arr"
    arr=("${arr[@]:1}")
}
# unshft elements arr
unshft() {
	# dump_array "${@: -1}"
    is_array ${!#} || return 1
    local -n arr=${!#}
	arr=("${@: 1: $(($#-1))}" "${arr[@]}")
}


factorpow() {
	if [[ "$1" =~ ^[0-9]+$ ]]; then
		echo -n "$1:"
		__argstr="$(factor $1)"
		__argstr="${__argstr#*: }"
		__last_num=
		__n=1
		while IFS= read -r __num; do
			if [ "$__num" != "$__last_num" ]; then
				[ "$__last_num" != '' ] && [[ $__n -gt 1 ]] && echo -n "^$__n"
				echo -n " $__num"
				__n=1
			else
				((++__n))
			fi
			__last_num="$__num"
		done < <( echo "$__argstr" | tr ' ' '\n' )
		[[ $__n -gt 1 ]] && echo -n "^$__n"
		echo
		return 0
	else
		echo "error: $1 is not an integer" >&2
		return 1
	fi
}

ps-aux-grep() {
	echo >&2; echo "ps aux | grep $@" >&2; echo >&2
	ps aux | head -1; ps aux | grep $@ | grep -v grep
	echo >&2
}
alias ps-grep='ps-aux-grep'



# Some example functions:
#
# a) function settitle
# settitle () 
# { 
  # echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }


# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
  # local x2 the_new_dir adir index
  # local -i cnt

  # if [[ $1 ==  "--" ]]; then
    # dirs -v
    # return 0
  # fi

  # the_new_dir=$1
  # [[ -z $1 ]] && the_new_dir=$HOME

  # if [[ ${the_new_dir:0:1} == '-' ]]; then
    # #
    # # Extract dir N from dirs
    # index=${the_new_dir:1}
    # [[ -z $index ]] && index=1
    # adir=$(dirs +$index)
    # [[ -z $adir ]] && return 1
    # the_new_dir=$adir
  # fi

  # #
  # # '~' has to be substituted by ${HOME}
  # [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"

  # #
  # # Now change to the new dir and add to the top of the stack
  # pushd "${the_new_dir}" > /dev/null
  # [[ $? -ne 0 ]] && return 1
  # the_new_dir=$(pwd)

  # #
  # # Trim down everything beyond 11th entry
  # popd -n +11 2>/dev/null 1>/dev/null

  # #
  # # Remove any other occurence of this dir, skipping the top of the stack
  # for ((cnt=1; cnt <= 10; cnt++)); do
    # x2=$(dirs +${cnt} 2>/dev/null)
    # [[ $? -ne 0 ]] && return 0
    # [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
    # if [[ "${x2}" == "${the_new_dir}" ]]; then
      # popd -n +$cnt 2>/dev/null 1>/dev/null
      # cnt=cnt-1
    # fi
  # done

  # return 0
# }

# alias cd=cd_func
