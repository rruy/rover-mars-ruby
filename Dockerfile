
# sudo docker build -t rovermars ./
# sudo docker run rovermars . > output.txt
#docker run --rm -it rovermars ruby -e "puts 'Hello'"

FROM ruby:latest
ENV PATH /usr/bin:$PATH
RUN mkdir /rovermars
WORKDIR /rovermars
COPY . /rovermars

ENTRYPOINT ["ruby", "/rovermars/test/test_program.rb"]
CMD ["bash"]





