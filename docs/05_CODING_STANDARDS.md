# AdamLife Coding Standards

## Purpose

This document defines the coding standards for the AdamLife project.

Every contributor, including AI assistants, must follow these rules to keep the codebase clean, readable and maintainable.

---

# General Principles

Code should always be:

- Readable
- Predictable
- Maintainable
- Consistent
- Simple

Readable code is more valuable than clever code.

---

# File Naming

Use snake_case for file names.

Examples:

```
task_tile.dart

finance_service.dart

vehicle_model.dart
```

Avoid names like:

```
helpers.dart

temp.dart

new_file.dart
```

---

# Class Naming

Use PascalCase.

Examples:

```
TaskTile

FinanceService

VehicleProvider
```

---

# Variables

Use camelCase.

Examples:

```
currentBalance

selectedVehicle

monthlyExpenses
```

Variable names should clearly describe their purpose.

Avoid abbreviations unless universally understood.

---

# Constants

Use the `const` keyword whenever possible.

Prefer immutable values.

---

# Functions

A function should do one thing.

If a function becomes difficult to understand, split it into smaller functions.

Function names should describe actions.

Good examples:

```
loadTasks()

calculateBalance()

saveExpense()
```

---

# Widgets

Widgets should remain small.

Extract repeated UI into reusable widgets.

Business logic should never live inside widgets.

Prefer StatelessWidget whenever possible.

---

# Business Logic

Business logic belongs in services and providers.

UI should only display data and react to user interaction.

---

# Comments

Write comments only when necessary.

Code should explain itself whenever possible.

Avoid obvious comments.

Bad:

```dart
// Increment counter
counter++;
```

Good:

```dart
// Recalculate monthly balance after deleting an expense.
```

---

# Imports

Keep imports organized.

Remove unused imports immediately.

Avoid unnecessary package dependencies.

---

# Formatting

Always use the default Dart formatter.

Never manually fight the formatter.

Formatting should remain consistent across the project.

---

# Code Duplication

Avoid copy-paste.

If code is repeated multiple times, extract reusable components.

---

# Error Handling

Handle errors where they occur.

Display friendly messages to users.

Never expose technical exceptions directly to the UI.

---

# Performance

Optimize only when necessary.

Prioritize readability first.

Measure performance before optimizing.

---

# AI Rules

AI-generated code must:

- follow project architecture
- follow naming conventions
- keep functions small
- avoid unnecessary abstraction
- avoid unused code

AI must never:

- change architecture
- rename folders
- introduce new packages without approval
- generate code that is not immediately useful

---

# Git Commits

Each commit should represent one logical change.

Commit messages should be short and descriptive.

Examples:

```
Add planner module

Create finance models

Implement dashboard layout
```

Avoid vague messages like:

```
fix

update

changes

test
```

---

# Code Review Checklist

Before every commit, verify:

- Code builds successfully.
- No unused imports remain.
- No unnecessary comments exist.
- File names follow conventions.
- Architecture rules are respected.
- Code is readable.
- Changes solve the intended problem.

---

# Summary

The goal of these standards is not to restrict development.

The goal is to make the project easier to understand, maintain and extend for years to come.