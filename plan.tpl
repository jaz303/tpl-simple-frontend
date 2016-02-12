inputs:

set watchify_options, ""

yesno babel, "Use babel? ", default: 1
if $babel then
  add_option watchify_options, "-t [ babelify --presets [ react es2015 ] ]"
end

actions:

tree content
shell "npm install", echo: 1

if $babel then
  shell "npm install --save-dev babelify babel-preset-react babel-preset-es2015", echo: 1
end

template inplace: spin.up
create_git_repo commit: "Initial commit"
