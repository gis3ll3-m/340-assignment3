# 340-assignment3

## Video Link
https://1drv.ms/v/c/300333487d536498/IQB9dmF-iKXWRpOSGwbNWPotAbrDEyZNN2Owd_UCM6a5hdc?e=tonW4K

## Installation & Setup

### Prerequisites
Before you being, ensure you have installed:

1. **Java 25 JDK**
    - Download from [Oracle Java] (https://www.oracle.com/java/technologies/downloads/)
    - Verify installation `java -version`

2. **Maven**
    - Used to build and run the Spring Boot application
    - Verify installation `mvn -version`

3. **Neon.tech PostgreSQL Database** (Cloud-based, Serverless)
   - This project uses [Neon.tech](https://neon.tech), a serverless PostgreSQL database in the cloud
   - You don't need to install PostgreSQL locally
   - Sign up for a free account at [Neon.tech](https://neon.tech)
   - You only need an internet connection to connect to the database


### Setup Instructions
1. **Clone or Download the Project**

   ```bash
   git clone <repository-url>
   cd a3
   ```

2. **Configure the Database**
 #### Step 1: Get Your Neon.tech Connection String

   1. Navigate to [Neon.tech](https://neon.tech)
   2. Sign in to your account
   3. In your project dashboard, find your connection string
   4. It will look like: `postgresql://username:password@host:5432/dbname`

   #### Step 2: Stop Tracking `application.properties` Locally

   To prevent accidentally committing your database credentials to Git, use `git skip-worktree` to exclude your local copy:

   ```bash
   git update-index --skip-worktree src/main/resources/application.properties
   ```

   This tells Git to ignore any changes you make to this file locally. You can now safely edit the file without worrying about committing sensitive data.

   #### Step 3: Update Your Connection String

   Edit `src/main/resources/application.properties` and add your Neon.tech PostgreSQL connection string:

   ```properties
   spring.application.name=crud-api
   spring.datasource.url=jdbc:postgresql://host:5432/dbname
   spring.datasource.username=your_neon_username
   spring.datasource.password=your_neon_password
   spring.jpa.hibernate.ddl-auto=update

   #Log out sql queries
   logging.level.org.hibernate.SQL=DEBUG
   logging.level.org.hibernate.type.descriptor.sql.BasicBinder=TRACE
   logging.level.org.hibernate.orm.jdbc.bind=TRACE
   ```

   Replace with your actual Neon.tech credentials:
   - `host`: Your Neon.tech host (e.g., `some-cool-projectName-pooler.c-7.us-east-1.aws.neon.tech`)
   - `dbname`: Your database name (usually `neondb`)
   - `your_neon_username`: Your Neon.tech username
   - `your_neon_password`: Your Neon.tech password

## API Endpoints

All endpoints use the base URL: `http://localhost:8080/characters`

### 1. Get All Characters

```http
GET /characters
```

**Description**: Retrieve all CareBears in the database

**Parameters**: None

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of Character objects

#### Example Request

```bash
curl http://localhost:8080/characters
```

#### Example Response (Status: 200 OK)

```json
[
  {
    "bellyBadge": "Rain Cloud with hearts and raindrops",
	"characterId": 1,
	"description": "Grump Bear is known for being grumpy and always trying to find the negative in situations.",
	"name": "Grumpy Bear",
	"specialAbility": "Creates storm clouds and produces rain."
  },
  {
	"bellyBadge": "Sun",
	"characterId": 3,
	"description": "Funshine Bear is known for being cheerful and always trying to have fun.",
	"name": "Funshine Bear",
	"specialAbility": "Can create sunshine."
    },
	{
	"bellyBadge": "Rainbow",
	"characterId": 2,
	"description": "Cheer Bear is known for being cheerful and fun to be around!",
	"name": "Cheer Bear",
	"specialAbility": "Happiness Beam."
	}
]

```

---

### 2. Get Character by ID

```http
GET /characters/{id}
```

**Description**: Retrieve a single CareBear by their ID.

**Path Parameters**:

- `id` (Long, required): The unique identifier of a CareBear

**Response**:

- **Status Code**: `200 OK` (if found) or `404 Not Found` (if not found)
- **Body**: Bear object

#### Example Request

```bash
curl http://localhost:8080/characters/1
```

#### Example Response (Status: 200 OK)

```json
{
    "bellyBadge": "Rain Cloud with hearts and raindrops",
    "characterId": 1,
    "description": "Grump Bear is known for being grumpy and always trying to find the negative in situations.",
	"name": "Grumpy Bear",
	"specialAbility": "Creates storm clouds and produces rain."
}
```

#### Example Response if not found (Status: 404 Not Found)

```
(Empty body)
```

---

### 3. Create a New Student

```http
POST /api/characters
```

**Description**: Add a new CareBear

**Request Body**: Bear object with the following fields:

- `name` (String, required): Bear's name
- `description` (String, required, unique): Bears description
- `bellyBadge` (String, optional): Bear's belly badge
- `specialAbility` (Double, optional): Bear's ability

**Response**:

- **Status Code**: `200 OK` (if created successfully)
- **Body**: Created Bear object with assigned `characterId`

#### Example Request

```bash
curl -X POST http://localhost:8080/characters \
  -H "Content-Type: application/json" \
  -d '{
    "name":" Good Luck Bear",
    "description": "Good Luck Bear is known for being lucky and always trying to bring good luck to others.",
    "bellyBadge": "Four leaf clover",
    "specialAbility": "Brings good luck to others."
  }'
```

#### Example Response (Status: 200 OK)

```json
{
  "name":" Good Luck Bear",
  "description": "Good Luck Bear is known for being lucky and always trying to bring good luck to others.",
  "bellyBadge": "Four leaf clover",
  "specialAbility": "Brings good luck to others."
}
```

---

### 4. Update a character

```http
PUT /characters{Id}
```

**Description**: Update an existing CareBear

**Path Parameters**:

- `Id` (Long, required)

**Response**:

- **Status Code**: `200 OK`
- **Body**: Updated CareBear

---
#### Example Request

```bash
curl -X POST http://localhost:8080/characters \
  -H "Content-Type: application/json" \
  -d '{
    "name":"Cheer Bear",
    "description": "Cheer Bear is known for being cheerful and fun to be around!",
    "bellyBadge": "Rainbow",
    "specialAbility": "Happiness Beam."
  }'
```

#### Example Response (Status: 200 OK)

```json
{
   "name":"Cheer Bear",
    "description": "Cheer Bear is known for being cheerful and fun to be around!",
    "bellyBadge": "Rainbow",
    "specialAbility": "Happiness Beam."
}
```

---

### 5. Get Characters by Belly Badge

```http
GET /characters/bellyBadge/{bellyBadge}
```

**Description**: Filter CareBears by belly badge

**Path Parameters**:

- `bellyBadge` (String, required)

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of bears objects with same belly badge.

#### Example Request

```bash
curl http://localhost:8080/characters/bellyBadge/Sun
```

#### Example Response (Status: 200 OK)

```json
[
  {
    "bellyBadge": "Sun",
	"characterId": 3,
	"description": "Funshine Bear is known for being cheerful and always trying to have fun.",
	"name": "Funshine Bear",
	"specialAbility": "Can create sunshine."
  },
]
```

---

### 9. Delete a Character

```http
DELETE /characters{id}
```

**Description**: Delete a CareBear by Id

**Path Parameters**:

- `id` (Long, required): The ID of the bear to delete

**Response**:

- **Status Code**: `204 No Content` (successful deletion)
- **Body**: Empty

#### Example Request

```bash
curl -X DELETE http://localhost:8080/characters/1
```

#### Example Response (Status: 204 No Content)

```
(Empty body)
```


## VIDEO LINK
https://1drv.ms/v/c/300333487d536498/IQAN4wj3KJ_-SZvY2vBaLzbEAdaDGaAoWQLB1lOe3ongZhU?e=6U4So3 