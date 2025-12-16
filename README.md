# Ruby Beginner Toolkit API

A simple REST API built with Sinatra to help beginners learn Ruby programming concepts. This toolkit provides endpoints to explore basic Ruby topics like variables, loops, and methods.

## Features

- 🚀 Simple REST API endpoints
- 📚 Educational content for Ruby beginners
- 🔍 Topic browsing and detailed views
- ✅ Health check endpoint
- 📦 Clean, modular code structure

## Prerequisites

- Ruby 2.7+ installed
- Bundler gem installed

## Installation

1. Clone the repository:
```bash
git clone <your-repo-url>
cd ruby-beginner-toolkit
```

2. Install dependencies:
```bash
bundle install
```

3. Start the server:
```bash
ruby app.rb
```

The API will be available at `http://localhost:4567`

## API Endpoints

### Base Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | Welcome message |
| GET | `/hello` | Simple hello world |
| GET | `/health` | Health check status |

### Topics Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/topics` | Get all available topics |
| GET | `/topics/:id` | Get specific topic by ID |

## Example Usage

### Get all topics
```bash
curl http://localhost:4567/topics
```

Response:
```json
[
  {
    "id": 1,
    "title": "Variables",
    "description": "Storing values in Ruby"
  },
  {
    "id": 2,
    "title": "Loops",
    "description": "Repeating actions"
  },
  {
    "id": 3,
    "title": "Methods",
    "description": "Reusable blocks of code"
  }
]
```

### Get specific topic
```bash
curl http://localhost:4567/topics/1
```

Response:
```json
{
  "id": 1,
  "title": "Variables",
  "description": "Storing values in Ruby"
}
```

## Project Structure

```
ruby-beginner-toolkit/
├── app.rb                    # Main application file
├── Gemfile                   # Dependencies
├── data/
│   └── topics.rb            # Topic data storage
├── helpers/
│   └── response_helper.rb   # JSON response utilities
└── routes/
    └── topics.rb            # Topic-related routes
```

## Development

This project follows a modular structure:

- **app.rb**: Main Sinatra application with core routes
- **helpers/**: Utility modules for common functionality
- **routes/**: Organized route handlers by feature
- **data/**: Static data and models

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test your changes
5. Submit a pull request

## License

This project is open source and available under the MIT License.