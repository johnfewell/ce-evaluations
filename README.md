# ce-evals-app

## Demo

[Demo can be found here](https://fast-harbor-27099.herokuapp.com)

## Overview

This app allows for the creation and management of continuing education evaluations and certificates.

Attendees can log in and evaluate courses they have been registered for. After they complete an evaluation, they can download a certificate as proof of their CE credits. Instructors can log in, create, and assign evaluations for their courses. They can also view reports which summarize feedback for their courses. Users can log in or sign up with email or Facebook.

## Installation

Clone this repository and run

```
bundle install
npm install
rake db:migrate
rails s
```

## License

See [LICENSE](LICENSE.txt) file.

## Developing and Contributing

Please either submit a pull request or contact me at fewell@gmail.com.

## Evaluations

As an instructor or admin, you can create questions, then assign them to an evaluation. Once you've done that, you can assign the evaluation to a course.

## Instructors

Instructors can edit their class details if it hasn't ended yet. They can also creat new questions and assign questions to evaluations and then assign evaluations to courses.  

## Attendees

Attendees simply log in, their courses, and if a course is complete, they can complete the evaluation and download a pdf of their certificate.

## Admin User

The admin user is able to create, edit, and delete any instances of the any of the models. In addition, they can assign attendees to courses or assign instructors to courses. They also assign new users to roles, either instructors or attendees.
