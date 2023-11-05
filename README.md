# GoScrapy-Encored

## Web Project for Automatic Price Updates

The main idea is to simplify the process of updating prices for small companies from a wholesaler's list. This task becomes particularly challenging in countries where inflation causes prices for every product to fluctuate frequently, sometimes changing two or even three times within a single month.

### To Address This Need, We Need to:

- Retrieve product data from wholesalers' websites.
- Save this data into a database.
- Create an endpoint to enable the development of a frontend for managing and utilizing this information.

### Infrastructure Cloud Deployment

The main idea here is to leverage [Encore](https://encore.dev) technology to get our product up and running in the cloud. This approach simplifies the process of running, testing, implementing CI/CD, and deploying the application.

<img width="200px" src="https://encore.dev/assets/branding/logo/logo.svg" alt="Encore - The Backend Development Engine" />

## Using Databases with Encore

Encore treats SQL databases as logical resources and natively supports **PostreSQL** databases.
To start using a database you only need to [define the schema](https://encore.dev/docs/primitives/databases#defining-a-database-schema) by creating a migration file. Encore takes care of [provisioning the database](https://encore.dev/docs/primitives/databases#provisioning-databases), running new schema migrations during deploys, and connecting to it.

### Defining database schemas

Database schemas are defined by creating *migration files* in a directory named `migrations`
within an Encore service package. As you can see in this example, the data base schema is defined in the migration file `1_create_table.up.sql`.

## Running

To run the application locally, make sure you have [Docker](https://docker.com) installed and running. This is required to run Encore applications with SQL databases.

```bash
# Run the app
encore run
```

## Open the developer dashboard

While `encore run` is running, open <http://localhost:9400/> to view Encore's local developer dashboard.
Here you can see the request you just made and a view a trace of the response.

## Testing

```bash
encore test ./...
```
