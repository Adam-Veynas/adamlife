# AdamLife Architecture

## Purpose

This document defines the software architecture of the AdamLife project.

Every contributor, including AI assistants, must follow the rules described here.

If generated code conflicts with this document, this document has priority.

---

# Architecture Style

AdamLife follows a **Feature-First Modular Architecture**.

The application is divided into independent business modules (features).

Each feature owns its own UI, business logic, widgets and models.

Features should communicate only through shared abstractions when necessary.

The architecture prioritizes:

- readability
- maintainability
- scalability
- low coupling
- high cohesion

---

# Project Structure

```
lib/

app/
core/
shared/
features/

main.dart
```

## app

Contains application-level configuration.

Responsibilities:

- App initialization
- Theme configuration
- Routing
- Global application setup

The app layer must never contain business logic.

---

## core

Contains project-wide functionality.

Examples:

- constants
- utilities
- services
- extensions
- common exceptions
- reusable infrastructure

Core must not depend on feature modules.

---

## shared

Contains reusable components shared between multiple features.

Examples:

- reusable widgets
- enums
- common models
- helper classes

Shared should remain lightweight.

If something is used by only one feature, it belongs inside that feature.

---

## features

Contains all business modules.

Examples:

```
features/

dashboard/

planner/

finance/

vehicles/

settings/
```

Each feature is isolated from others.

---

# Feature Structure

Every feature follows the same internal structure.

```
feature_name/

pages/

widgets/

models/

services/

providers/
```

Not every folder must exist immediately.

Only create folders when they become necessary.

Avoid empty directories.

---

# Responsibilities

## Pages

Responsible only for screen composition.

Pages coordinate widgets.

Pages should contain minimal business logic.

---

## Widgets

Reusable UI components belonging only to that feature.

Widgets should be as small as reasonably possible.

---

## Models

Contain data structures.

Models must not contain UI code.

---

## Services

Contain feature-specific business logic.

Services interact with storage and process data.

---

## Providers

Responsible for application state.

Providers expose data to the UI.

Business logic should remain outside widgets whenever possible.

---

# Dependency Rules

Allowed dependencies:

```
Page

↓

Widget

↓

Provider

↓

Service

↓

Storage
```

Forbidden:

- Widget calling storage directly
- UI performing database operations
- Feature accessing another feature's internal implementation

---

# Routing

Routing belongs only inside the app layer.

Features must never create independent routing systems.

---

# State Management

Riverpod is the official state management solution.

No additional state management libraries may be introduced without approval.

---

# Local Storage

The project uses local storage.

Storage implementation must remain isolated from UI.

Widgets should never know where data is stored.

Storage technology may evolve without affecting feature implementation.

---

# Naming Convention

Folders:

snake_case

Examples:

```
task_tile

monthly_statistics

vehicle_history
```

Classes:

PascalCase

Examples:

```
TaskTile

FinanceService

VehicleModel
```

Variables:

camelCase

Examples:

```
currentBalance

monthlyExpenses

selectedVehicle
```

Constants:

camelCase with const keyword.

---

# Widget Rules

Prefer StatelessWidget whenever possible.

Use StatefulWidget only when local widget state is required.

Business logic must never live inside widgets.

Widgets should remain focused on presentation.

---

# File Rules

One file should have one primary responsibility.

Avoid generic filenames.

Bad:

```
helpers.dart

utils2.dart

temp.dart
```

Good:

```
task_card.dart

finance_summary.dart

vehicle_service_tile.dart
```

---

# Code Organization

Prefer simple code over clever code.

Avoid unnecessary abstraction.

Avoid deeply nested widgets.

Extract reusable UI when duplication appears.

Readable code is more valuable than short code.

---

# Error Handling

Errors should be handled as close as possible to their source.

User-friendly messages belong in the presentation layer.

Internal exceptions should remain inside services.

---

# Scalability

New modules must be added inside the features directory.

Adding a new feature must not require modifying existing feature architecture.

Every feature should evolve independently.

---

# AI Development Rules

AI assistants must:

- follow project documentation
- preserve folder structure
- avoid unnecessary refactoring
- avoid adding dependencies without approval
- keep code simple and readable

AI assistants must not:

- invent architecture
- rename folders
- reorganize project structure
- introduce unnecessary design patterns
- generate unused code

---

# Architecture Principles

The project always prioritizes:

Readability > Cleverness

Maintainability > Short Code

Consistency > Personal Preference

Simple Solutions > Complex Abstractions

Architecture Stability > Rapid Development

---

# Summary

The architecture exists to keep the project simple as it grows.

Every architectural decision should reduce future complexity instead of increasing it.