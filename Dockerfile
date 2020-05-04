FROM openjdk:14

ENV ALLURE_VERSION=2.13.1

RUN curl -L https://github.com/allure-framework/allure2/releases/download/$ALLURE_VERSION/allure-commandline-$ALLURE_VERSION.tgz -o /tmp/allure.tar.gz && \
    tar -zxvf /tmp/allure.tar.gz && \
    rm /tmp/allure.tar.gz && \
    mv allure-$ALLURE_VERSION /usr/local/share/allure && \
    ln -s /usr/local/share/allure/bin/allure /usr/local/bin/allure

WORKDIR /app

ENTRYPOINT ["allure"]
