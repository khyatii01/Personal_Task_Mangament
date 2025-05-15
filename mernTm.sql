CREATE DATABASE merntm;

USE merntm;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  isAdmin BOOLEAN DEFAULT FALSE,
  isActive BOOLEAN DEFAULT TRUE
);

CREATE TABLE tasks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  createdAtDate DATETIME DEFAULT CURRENT_TIMESTAMP,
  dueDate DATETIME,
  priority ENUM('high', 'medium', 'normal', 'low') DEFAULT 'normal',
  stage ENUM('todo', 'in progress', 'completed') DEFAULT 'todo',
  description TEXT,
  isTrashed BOOLEAN DEFAULT FALSE,
  userId INT NOT NULL,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (userId) REFERENCES users(id) ON DELETE CASCADEtaskstasks
);
CREATE TABLE task_activities (
  id INT AUTO_INCREMENT PRIMARY KEY,
  taskId INT NOT NULL,
  userId INT,tasksusers
  type ENUM('assigned', 'started', 'in progress', 'bug', 'completed', 'commented') DEFAULT 'assigned',
  activity TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (taskId) REFERENCES tasks(id) ON DELETE CASCADE,
  FOREIGN KEY (userId) REFERENCES users(id) ON DELETE SET NULL
);
