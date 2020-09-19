# OpenGraph Previewer
Application to show and store a OpenGraph Preview of a specific URL.
## 1. Go to root folder and Run bundle install at the first time:

```bash
bundle install
```

## 2. Setup Database:

```bash
rails db:create
rails db:migrate
```

## 3. Run the App:

```bash
rails s
```

## Details about the APP:

It uses the Nokogiri Gem for parsing the content.

It's fully responsive using Bootstrap 4.

It saves the OpenGraph meta tags in the Database each time the use request for a preview.

The user can view every preview that is saved in the database at any moment and also delete them. The only operation not available is the Edit, which is not appropriated in this case since the App get all the information from the Internet.

Every time the user requests for a preview that is already in the database the app just show the content saved before. This can be way faster than parsing the content every time, but at the same time if the URL changes anything related to the meta tags, the preview may be shown outdated.
However, if the title or the image field is empty, the app will try to parse the website again to check if there is some new information available to get.

## How to test
The tests are made with RSpec, so you just need to run the following command:
```bash
rspec
```
Although the app contains a HTML file for a more efficient test, the suit also covers some HTTP requests. These requests are checking the response in a generic way to not break every time the page gets modified for some reason.
