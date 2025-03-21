# for loop not working so added line by line for now
# but will fix the issue later
HOME_DIR := $(HOME)

all: symlink

symlink:
	@echo "Creating symlinks for dotfiles..."

	@ln -sf $(HOME_DIR)/.dotfiles/.vimrc $(HOME_DIR)/.vimrc
	@echo "Created symlink for .vimrc"

	@ln -sf $(HOME_DIR)/.dotfiles/.zshrc $(HOME_DIR)/.zshrc
	@echo "Created symlink for .zshrc"

	@ln -sf $(HOME_DIR)/.dotfiles/.tmux.conf $(HOME_DIR)/.tmux.conf
	@echo "Created symlink for .tmux.conf"

	@ln -sf $(HOME_DIR)/.dotfiles/.p10k.zsh $(HOME_DIR)/.p10k.zsh
	@echo "Created symlink for .p10k.zsh"

	@ln -sf $(HOME_DIR)/.dotfiles/.vim $(HOME_DIR)/.vim
	@echo "Created symlink for .vim"

	@ln -sf $(HOME_DIR)/.dotfiles/.tmux $(HOME_DIR)/.tmux
	@echo "Created symlink for .tmux"

	@ln -sf $(HOME_DIR)/.dotfiles/.config $(HOME_DIR)/.config
	@echo "Created symlink for .config"

clean:
	@echo "Removing all symlinks..."
	@rm -f $(HOME_DIR)/.vimrc
	@rm -f $(HOME_DIR)/.zshrc
	@rm -f $(HOME_DIR)/.tmux.conf
	@rm -f $(HOME_DIR)/.p10k.zsh
	@rm -rf $(HOME_DIR)/.vim
	@rm -rf $(HOME_DIR)/.tmux
	@rm -rf $(HOME_DIR)/.config
	@echo "Removed symlinks"

