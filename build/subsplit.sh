
git subsplit init https://github.com/subtree-test/main.git
git subsplit update

time git subsplit publish --heads="master" --no-tags src/Cache/adapter-bar:git@github.com/subtree-test/adapter-bar.git
time git subsplit publish --heads="master" --no-tags src/Cache/adapter-foo:git@github.com/subtree-test/adapter-foo.git
time git subsplit publish --heads="master" --no-tags src/Cache/foobar-common:git@github.com/subtree-test/foobar-common.git
