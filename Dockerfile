FROM ddarko/civis-services-shiny:latest

COPY ./requirements.txt /requirements.txt
RUN Rscript -e "packages <- readLines('/requirements.txt'); install.packages(packages)"

# Shiny folder and default app
COPY ./app/app.r ./app/app.r
COPY entrypoint.sh /


EXPOSE 3838

ENTRYPOINT ["/entrypoint.sh"]
