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




## Test Suite

run via

```bash
bundle exec rspec
```


## Outcomes

