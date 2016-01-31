
git subsplit init git@github.com:subtree-test/main.git
git subsplit update

time git subsplit publish --heads="master" --no-tags src/Cache/adapter-bar:git@github.com/subtree-test/foobar-bar.git
time git subsplit publish --heads="master" --no-tags src/Cache/adapter-bar:git@github.com/subtree-test/foobar-foo.git
time git subsplit publish --heads="master" --no-tags src/Cache/adapter-bar:git@github.com/subtree-test/foobar-common.git
