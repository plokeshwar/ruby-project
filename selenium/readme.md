### Installation

`$ gem install bundler`

`$ bundle install`

`$ brew install chromedriver`

### Run tests

| Profile | Command | Hostname | Browser |
| ------------- | ------------- | ------------- | ------------- |
| Default | `$ cucumber` | http://partners.alpha.redmart.com | Chrome
| Dev | `$ cucumber -p dev` | http://localhost:9090 | Chrome
| BrowserStack | `$ cucumber -p browserstack` | http://m.alpha.redmart.com | Edge 16
| CI | `$ cucumber -p ci` | http://partners.alpha.redmart.com | Chrome

### Verify changes

`$ rubocop`

### Installation issues

selenium-cucumber nokogiri build errors
* Follow [this instruction](https://stackoverflow.com/a/34609741)
* Rerun `$ gem install selenium-cucumber`
