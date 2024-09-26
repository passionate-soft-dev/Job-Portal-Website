git filter-branch --env-filter '
old_email="polarbearonlinebusiness@hotmail.com"
new_name="passionate-soft-dev"
new_email="polarbearbusiness60@gmail.com"
an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"
if [ "$GIT_COMMITTER_EMAIL" = $old_email ]
then
cn=$new_name
cm=$new_email
fi
if [ "$GIT_AUTHOR_EMAIL" = $old_email ]
then
an=$new_name
am=$new_email
fi
export GIT_AUTHOR_NAME=$an
export GIT_AUTHOR_EMAIL=$am
export GIT_COMMITTER_NAME=$cn
export GIT_COMMITTER_EMAIL=$cm
' -f