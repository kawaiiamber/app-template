Contributing
============

Pull Requests
-------------

I am always looking for better standard and ways to improve makefiles to
work on more and more systems. If you would like to make a PR, all I ask
if that when you fork it, you make a branch that is named appropriately
and request to merge that to the master branch. \#\#\# Quick PR Guide
Fork my repo, then set it up via

    git clone <your-fork-url>
    cd app-template
    git remote add upstream https://github.com/kawaiiamber/app-template
    git checkout -b <your-branch-name>
    # Make your changes
    git add -A
    git commit -m "your commit message"
    git push origin <your-branch-name>

If it has been a while since you cloned the repo, please pull to be up
to date with latest upstream master branch:

    git checkout master
    git pull upstream master

If you end up needing to make multiple commits, unless they're not that
relates, please squash commits. It's better to have one commit for one
thing that is changing.

    git rebase -i HEAD~<number-of-commits>
    # change `pick` to `squash` on all but the first
    git push origin <your-branch-name> -f

Issues
------

For submitting issues, please tag the issue apprpriately in the title
via \[bug\], \[feature\], etc. If it is a bug, please list what the bug
is and what it affects, along with the proper steps to reproduce it (if
applicable).
