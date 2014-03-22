#!/bin/zsh

# rsync the repo to cluster
# code
rsync -ravzP --delete --prune-empty-dirs \
    --exclude=".DS_Store" --exclude='*.pyc' --exclude='data' --exclude='vislab/tests/_temp' \
    . sergeyk@flapjack1.icsi.berkeley.edu:/u/sergeyk/work/vislab-git
rsync -ravzP --delete --prune-empty-dirs \
    --exclude=".DS_Store" --exclude='*.pyc' --exclude='data' --exclude='vislab/tests/_temp' \
    . sergeyk@flapjack2.icsi.berkeley.edu:/u/sergeyk/work/vislab-git
rsync -ravzP --delete --prune-empty-dirs \
    --exclude=".DS_Store" --exclude='*.pyc' --exclude='data' --exclude='vislab/tests/_temp' \
    . sergeyk-pc1.vicsi:work/vislab-git

# shared data
rsync -ravzP --delete data/shared/ sergeyk@flapjack1.icsi.berkeley.edu:/u/sergeyk/work/vislab-git/data/shared
rsync -ravzP --delete data/shared/ sergeyk@flapjack2.icsi.berkeley.edu:/u/sergeyk/work/vislab-git/data/shared
rsync -ravzP --delete data/shared/ sergeyk-pc1.vicsi:work/vislab-git/data/shared