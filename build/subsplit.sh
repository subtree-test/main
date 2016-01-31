
# Install subsplit
git clone https://github.com/dflydev/git-subsplit.git
cd git-subsplit && sudo sh ./install.sh && cd ..

# Init the subplit
git subsplit init https://github.com/subtree-test/main.git
git subsplit update

# Push the changes to other repositories
time git subsplit publish --heads="master" --no-tags src/Cache/adapter-bar:git@github.com/subtree-test/adapter-bar.git
time git subsplit publish --heads="master" --no-tags src/Cache/adapter-foo:git@github.com/subtree-test/adapter-foo.git
time git subsplit publish --heads="master" --no-tags src/Cache/foobar-common:git@github.com/subtree-test/foobar-common.git
