echo 'INSTALLING GITLAB (https://about.gitlab.com/downloads/#debian8)'
sudo apt-get -y -qq update
sudo apt-get install curl openssh-server ca-certificates postfix
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt-get install gitlab-ce
sudo gitlab-ctl reconfigure
echo 'GITLAB INSTALLED.'

echo 'INSTALLING GIT-LFS (https://github.com/git-lfs/git-lfs/wiki/Installation)'
sudo apt-get -y -qq update
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install
echo 'GIT-LFS INSTALLED.'
