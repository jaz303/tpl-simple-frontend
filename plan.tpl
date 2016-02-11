inputs:
yesno babel, "Use babel? ", default: 1

actions:
tree content
shell "npm install", echo: 1

if $babel then
  shell "npm install --save-dev babelify babel-preset-react babel-preset-es2015", echo: 1
  copy opt/spin.up.babel, spin.up
else
  copy opt/spin.up.default, spin.up
end

create_git_repo commit: "Initial commit"
