# README





## Development setup


Get the code:

`git clone https://github.com/vaerohq/codesample`


Configure ruby:

* if you use `rbenv`, init as so: `eval "$(rbenv init - zsh)"`
* if you use `rvm`, init as usual

both should obey `.ruby-version`

Install the gems from `Gemfile` and prep the database:

```bash
cd codesample

# install gems
bundle install

# prep the local sqlite3 db
bin/rails db:migrate
```

Start the local server and verify db connectivity

```bash
bundle exec rails s -p 3000
```

then visit [dev server](http://localhost:3000).  You should see a landing page with instructions to create a `User`.


## Instructions

NB:

* `User` (with devise and password authentication) is preconfigured

* Bootstrap 5.3 is installed and preconfigured.  If you prefer, feel free to use tailwind / raw scss.

* Sample data is available in a tab delimited file at `data/example_data.tsv`; I built a task skeleton in `lib/tasks/data.rake` that you can run via `bundle exec rake data:insert_data`.

Format: `customer name <tab> user email <tab> patent name <tab> patent title <tab> granted`.  You may assume that there is a header row, that there are no missing elements, and that each row is complete.

* Don't worry about the formatting on the devise views.


#### Tasks:

1. Build appropriate database table(s) with migrations to ingest the sample data

2. Insert the data

3. Add a route/controller/views that, for the current user (avail `current_user`), shows that users' patents

4. Allow a user to edit his/her patent subjects.


#### When you are done:

1. Create a private repo with your github account

2. Modify the instructions on the new repo page under "... or push an existing repository" to instead add a new remote, ala

```bash
git remote add origin2 git@github.com:earlh/test2.git   # turn origin into origin2 (or whatever you prefer), and note that the git url will be different for you
git branch -M main
git push -u origin2 main
```

3. Reload the repo page (mine was called earlh/test2) to verify it worked

4. Add user `earlh` (NB: email is `github@earlh.com`) to the repo (Settings -> Collaborators -> Add People and add earlh)




## Test Suite

run via

```bash
bundle exec rspec
```


