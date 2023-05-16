# Educational-system

## About 

This project was started by me with the intention of being a multi-repository to learn Ruby on Rails in a real project. It will be a school management system that links schools, teachers, and students, along with their functionalities.

## Requirements

- Ruby 3.1.0p0 
- Rails 7.0.4.3
- Banco de dados MySQL

## Enviroment setup

Make sure you have Ruby and Rails installed on your machine. If not, follow the official installation instructions for your operating system.

1. Clone the repository to your local machine:
    git clone https://github.com/Odorizzi1/Educational-system.git

2. Navigate to the project directory:
    cd Educational-system

3. Install project dependencies:
    bundle install

4. Create the .env file at the root of the project and define the necessary environment variables, such as database credentials. Example:

    DB_USERNAME=your_username
    DB_PASSWORD=your_password
    DB_HOST=localhost

5. Configure the database:
    rails db:create
    rails db:migrate

## Starting the Project

1. Start the local server:
rails server

2. Open your web browser and access http://localhost:3000 to view the running project.

## Contributing
Open a pull request for review and merging of your changes.

