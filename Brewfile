################################################################################
# Taps
################################################################################
tap 'homebrew/cask'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'
tap 'homebrew/bundle'
tap 'stripe/stripe-cli'
tap 'stripe/stripe-mock'

################################################################################
# Binaries
################################################################################
brew 'awscli'
brew 'bash' # Latest Bash version
brew 'coreutils' # Those that come with macOS are outdated
brew 'ffmpeg'
brew 'gh' # GitHub CLI
brew 'git'
brew 'httpie'
brew 'imagemagick'
brew 'mackup'
brew 'mas' # Mac App Store manager
brew 'pkg-config' # https://github.com/driesvints/dotfiles/issues/20
brew 'stripe/stripe-cli/stripe'
brew 'stripe/stripe-mock/stripe-mock'
brew 'svn' # Needed to install fonts
brew 'zsh'

################################################################################
# Development
################################################################################
brew 'node'

################################################################################
# Apps
################################################################################
# set arguments for all 'brew install --cask' commands
cask_args appdir: "~/Applications", require_sha: true

# Utility
# cask '1password' // some issues with chrome extension when installing through brew
cask 'gpg-suite'
cask 'imageoptim'
cask 'iterm2'
# cask 'nordvpn'
cask 'pastebot'
cask 'rectangle'
cask 'transmission'
# cask 'transmit'
cask 'the-unarchiver'
# cask 'adguard'

# Browsers
cask 'google-chrome'
cask 'google-chrome-canary', args: { require_sha: false }
cask 'firefox'

# Communication
cask 'discord'
cask 'slack'
# cask 'telegram'

# Development
cask 'docker'
cask 'github'
cask 'sourcetree'
cask 'jetbrains-toolbox'
cask 'postman'
cask 'httpie'
# cask 'tableplus'
cask 'visual-studio-code'
cask 'mongodb-compass'
cask 'studio-3t'

# Graphics
cask 'figma'

# Entertainment
cask 'spotify'

################################################################################
# Quicklook plugins
################################################################################
cask 'qlmarkdown'
cask 'quicklook-json', args: { require_sha: false }

################################################################################
# Fonts
################################################################################
cask 'font-lato', args: { require_sha: false }
cask 'font-roboto', args: { require_sha: false }
cask 'font-montserrat', args: { require_sha: false }
cask 'font-fira-code'

################################################################################
# Mac App Store
################################################################################
mas 'Keynote', id: 409183694
mas 'Numbers', id: 409203825
mas 'Lightweight PDF', id: 1450640351
mas 'Speedtest', id: 1153157709