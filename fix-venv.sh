#!/bin/bash -eu

read -rp "Please enter venv folder name [default 'venv']: " venv

[ -z "$venv" ] && venv="venv"
[ ! -d "$venv" ] && echo -e "[ERROR] venv folder '$venv' not found" && exit 1

echo "Use venv folder: '${venv}'"

find "$venv" -name __pycache__ -print0 | xargs -0 rm -rf --

old=$(perl -ne '/VIRTUAL_ENV="(.*?)"/ && print "$1\n"' "$venv/bin/activate")
new=$PWD/$venv

old2="($(basename "$old"))"
new2="($(basename "$venv"))"

if [ "$old" = "$new" ]; then
  echo "venv paths are already set correctly to $new"
else
  files=$(grep -F -r "$old" "$venv" -l)
  echo "$files"
  echo "Replace $old with $new in the above files?"
  read -rp "[yn] ? " YN
  if [ "$YN" = y ]; then
    sed -i "s:$old:$new:g" "$files"
  fi

  files=$(grep -F -r "$old2" "$venv"/bin/activate* -l)
  echo "$files"
  echo "Replace $old2 with $new2 in the above files?"
  read -rp "[yn] ? " YN
  if [ "$YN" = y ]; then
    sed -i "s:$old2:$new2:g" "$files"
  fi
fi

python_path="$(which python)"
venv_python_path="$PWD/$venv/bin/python"
read -rp "Link '$venv_python_path' to '$python_path'? [yn]" YN
if [ "$YN" = y ] && [ -f "$python_path"  ] ; then
  ln -sf "$python_path" "$venv_python_path"
fi

echo "done"
