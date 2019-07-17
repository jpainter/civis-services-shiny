FFROM ddarko/civis-services-shiny:latest


# Shiny folder and default app
COPY ./app/app.r ./app/app.r
COPY entrypoint.sh /


EXPOSE 3838

ENTRYPOINT ["/entrypoint.sh"]
