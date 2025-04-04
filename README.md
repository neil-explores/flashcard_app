# Welcome to the Flashcard App
This flashcard app includes a number of useful features, including:
- Create both tradaitional-looking flashcards, as well as interactive, fill-in flashcards.
- Add images to your flashcards
- Easily create flashcard tests.
- Randomize the flashcard order in your tests
- Progress bar during flashcard tests
- Tests includes hotkeys
- Review your test results
- Quickly create new tests that combine previous tests, or create tests that include cards that were answered incorrectly.  

## Traditional Flashcards
![flashcard-test-question](https://github.com/user-attachments/assets/817035e3-4763-455e-82ce-31e659320f76)


<br>
<br>

## Fill-in Flashcards

![fillin-example-create](https://github.com/user-attachments/assets/11e3de9d-63db-4af0-8527-6e70f1c654e5)

<br>
<br>

![fillin-example-question](https://github.com/user-attachments/assets/9e56b5d2-19c9-4167-b27b-03007811c4d0)


## Software Requirements

**Ruby**: You will need a ruby version >= `2.5.0`. I used ruby version `3.0`

**Rails**: You will need rails version `6.1.x`

**imagemagick**: This app depends on the `image_processing` gem so that thumbnails of your attached images properly show up.
  - To install on a Mac via homebrew: `brew install imagemagick`
  - To install via a debian/ubuntu terminal: `sudo apt install imagemagick`


## Setup
From the root of your app, run `bundle` to install the required gems and their dependencies.

### Important
The database where all your cards live, as well as the active storage location where all your uploads live, exist OUTSIDE of the application. This is a hackish way to easily seperate the data from the app. (For example: like me you might have multiple card decks and want to seperately version your card decks).

Lets examine the default database location. Look at the default configuration of your database at **config/database.yml**.  You will notice that the database name/location is:

`../imported_dbs/flashcard_cissp_database.sqlite3`

What this means:
- Your database will be located *up one directory* from this app's location on your computer, and within the directory named **imported_dbs**
- The default database name is **flashcard_cissp_database.sqlite3** (but this can easily be changed).

Lets also examine the default Active Storage location for the app. Look at the default configuration at **config/storage.yml**. You will notice that the Active Storage name/location is:

`../imported_dbs/flashcard_cissp_storage`.

What this means:
- Your Active Storage directory (location where all your associated attachments live) will be located *up one directory* from this app's location on your computer, and within the **imported_dbs/flashcard_cissp_storage** directory (but again, you can easily change the location if you want to).

Personally, I decided to nest my flashcard app into a directory called **meta_apps**. Inside my meta_apps directory you can see the **flashcard_app**, as well as the **imported_dbs** directory where all the flashcard app data lives:

![flashcard-database](https://github.com/user-attachments/assets/e33de4fc-99fd-4508-943d-3e031e13f86a)


Finally, run `rails db:migrate` to create your database file.

Startup your rails server with `rails s` and visit `localhost:3000` in your favorite web browser.

**Note** This app uses webpack, so the first time you run the app, all of the styling on the page may not be present.  If this happens, open up another terminal, `cd` to the app, and run the webpack server via `./bin/webpack-dev-server`.

## Last But Certainly Not Least
**STUDY EFFICIENTLY, FRIENDS**!

Strive to review your flashcards only as much as you need to in order to recall the content, but no more! [Read this awesome article about spaced repetition](https://collegeinfogeek.com/spaced-repetition-memory-technique/) to do just that. Happy studying!
