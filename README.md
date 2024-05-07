# README





## Development setup


Get the code:

`git clone https://github.com/vaerohq/codesample`


Configure ruby:

* if you use `rbenv`, init as so: `eval "$(rbenv init - zsh)"`
* if you use `rvm`, todo

Install the gems from `Gemfile`

```bash
cd codesample
bundle install
```

Start the local server and verify db connectivity

```bash
bundle exec rails s -p 3000
```

then visit [dev server](http://localhost:3000).  You should see TODO


## Test Suite

run via

```bash
bundle exec rspec
```


## Outcomes

