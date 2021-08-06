ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Add ruby version on prompt (float right)
RPS1='[$(ruby_prompt_info)]$EPS1'

# Useful plugins for Rails development with Sublime Text
plugins=(gitfast brew rbenv last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="./bin:${PATH}"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias r5p='bundle exec rails db:environment:set RAILS_ENV=test ; RAILS_ENV=test bundle exec rake db:drop db:create db:migrate; bundle exec rake db:environment:set RAILS_ENV=test && RAILS_ENV=test bundle exec rails db:drop db:create db:migrate && bundle exec rspec'
alias 5p='bundle exec rake db:drop db:create db:migrate; sleep 5; bundle exec rake db:seed'

alias t=git
alias b=bundle
alias g='GREP_COLOR="01;31" grep'
alias h=history
alias r='bundle exec rails'
alias k='bundle exec rake'
alias st='git status'
alias p='bundle exec rspec'
alias rspec='p'
alias cln='git reset . > /dev/null; git checkout . > /dev/null; git clean -fd > /dev/null'
alias ch='git cherry-pick -n'
# restarts wifi:
alias f='networksetup -setairportpower en0 off; networksetup -setairportpower en0 on'
alias amend='git commit --amend --no-edit'
alias km='k db:migrate'
alias rs='km && k assets:precompile && b exec rails s'
alias rgm='b exec rails g migration'
alias rc='b exec rails c'
alias rr='b exec rails runner'
alias rt='b exec rails routes'
alias be='bundle exec'
alias stash="t add -A > /dev/null; t stash > /dev/null"
alias sap="t stash apply"
alias c-="git checkout -"
alias m-="git merge -"
alias hex="ruby -e 'require %|securerandom|; puts SecureRandom.hex(24)'"
alias fwl="git push --force-with-lease"
alias gist="gist -p | pbcopy"
alias curl="curl --silent"



export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
