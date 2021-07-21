# University of Toronto -- Data Class (Staring 2021/06)

# Welcome to our class GitLab!!

## A few things you should know:

## This is where we will be posting all class documents

You'll find all class assignments located here! We'll try to upload each day's unsolved class files prior to class so that you can download them and be prepared.

Solutions for class exercises will be posted here after class.


## GitLab and GitHub are two different things

In the prework, you set up an SSH key for GitHub (if you didn't, contact one of the class TA's for help doing so). You will need to do the same with GitLab.

GitLab and GitHub are both places where people can host their code.

They both have "git" in their names since git is the program you are using to do version control on your code. Version control basically means that git is keeping track of whatever changes to the code you provide it. This makes it easier to work in groups since git will keep track of all changes made to the code. This way, you do not have to scroll through every page of code to find what people changed.

GitHub is geared toward Open Source (publically accessible) work. You can host any code on GitHub. Large public respositories are free. However, hosting private repositories that only certain people can access (like what we want to do for our class repo) costs money--around 80 dollars per user.

GitLab is similar to GitHub, but charges around 30 dollars per user, so we're using that to host our class repo. They function similarly and hook up to your git (the program on your computer).

You will be using **GitHub** to host repositories for your **homework** and **projects**.

You will be downloading (or, rather, pulling) **class files, slides, and exercises** from GitLab.


## Can I work on the exercises I pull from the repo?

It's probably best to copy the files you pull from the repo and paste them into a designated class repo. 

The reason why is that each time you pull from the repo, git will check for changes. If you change the code and then try to pull, git will throw a fit. This is because git sees that the changes you have made are not on the gitLab. There are multiple ways of getting around this, but the easiest one for now is simply to copy files over to another folder and work on the files there.


## How can I pull the exercises from the repo in the first place?

The first thing you'll want to do is set up an ssh key.

<img src="RM_images/step_one.png">

<img src="RM_images/step_two.png">

This will lead you to a page where you can add your ssh key--just like you did in the prework. (Once again, if you need help with this, please feel free to ask a TA or pop into Office Hours).

Now that we've set up our SSH key, we can clone the repo onto our computer.

Navigate back to the main repo page and click on the blue clone button. Then copy the **SSH link**. (**Not** the https).

<img src="RM_images/step_three.png">

Now that we've copied this link, we can go back to our computer. Navigate to the folder you'd like to put this repository into and open up a terminal (if you're using Windows, this will probably be gitBash; if you're using mac, this can be the regular terminal). (You can also open up the terminal and `cd` into the desired folder).

Once there, type `git clone git@utoronto.bootcampcontent.com:utoronto-bootcamp/utor-virt-data-pt-06-2021-u-b.git` (git@... being the SSH link we copied).

This will probably ask for the password you gave to your ssh key. It might also ask if you trust the repo you're connecting to--you can say yes to that.

<img src="RM_images/step_four.png">

After you've completed this step, you'll have a copy of the repository on your computer--congratulations! You'll just need to open it (or `cd` into it) to see the files. Remember, it's best to make copies of this class activities in another folder so you can work on them.

**After you have cloned the repository, you can pull (download) any new files onto this folder by opening up a terminal in this folder and running the following command:** 

```git pull origin master```

If you run into any errors while trying to pull files, let one of the TA's know. The most likely reason is that some file on your computer has been changed.


## I'm still a bit confused about how git works--are there any resources available?

Don't worry AT ALL!! Git takes a while to get used to and we don't expect you to have it mastered right away!

Here's a <a href="https://github.com/therichierich/basic-git-commands" target="_blank">write up</a> that you can use to understand it a bit better, though!

Also, feel free to ask any of the TA's if you need help! It's no bother at all!

