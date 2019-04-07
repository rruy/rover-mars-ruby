FROM ruby:latest
ENV PATH /usr/bin:$PATH
RUN mkdir /rovermars
WORKDIR /rovermars
COPY . /rovermars

ENTRYPOINT ["ruby", "/rovermars/test/test_program.rb"]






