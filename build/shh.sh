openssl aes-256-cbc -K $encrypted_efc26720f134_key -iv $encrypted_efc26720f134_iv -in phpcache.enc -out phpcache -d
eval "$(ssh-agent -s)" #start the ssh agent
chmod 600 phpcache # this key should have push access
ssh-add phpcache # Add the ssh key to travis. This will give travis push access