# Start from a base image with Ruby and PostgreSQL installed
FROM ruby:3.0.0

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install the dependencies
RUN bundle install

# Copy the rest of the application code
COPY . ./

# Expose the default Rails server port
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
