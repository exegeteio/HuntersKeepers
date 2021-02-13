# Hunters Keepers

The server should already be running on port 3000.

- To restart rails: `docker-compose restart web`
- To see Rails log: `docker-compose logs -f web`
- To stop: `docker-compose down`
- To run tests:  `docker-compose run --rm web rspec`
- To add JavaScript dependency: `docker-compose run --rm web yarn add <package>`
- To add a Gem dependency: `docker-compose run --rm web bundle add <package>`

**Warning**

Closing VS Code *will not* stop Hunters Keepers.  Be sure to use `docker-compose down` to stop the server.
