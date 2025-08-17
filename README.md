# ProfileBuilder

## Business Description

ProfileBuilder is a platform for generating professional, ATS-friendly resumes tailored to specific job descriptions. Users can input their contact details, experience, education, and skills to create a base profile. By providing a job description, the system leverages AI (ChatGPT) to analyze requirements and generate a customized resume optimized for the target position.

### Functional Requirements
- Create, update, read, and delete user profiles
- Generate resumes based on job descriptions
- Read already created resumes
- Delete already generated resumes
- Manually modify generated resumes
- Write notes about application status, expected salary, etc.

### Non-Functional Requirements
- Application must be mobile friendly and work well on iOS (preferably also on other devices)
- SLA of 99.9%
- Designed for future extensibility and development
- WCAG accessibility compliance
- Contact information is securely stored and never provided to LLM
- Continuous Integration / Continuous Deployment (CI/CD) enabled

- [Big Picture Event Storming](link-to-big-picture-event-storming)

## Technology Stack Information

- **Mobile App**: Built with .NET MAUI for cross-platform support.
- **Backend**: Modular monolith architecture using .NET for maintainability and scalability.
- **Frontend**: MAUI for a unified UI across devices.
- **Database**: CouchDB, chosen for its flexibility and sync capabilities.  
  _Note: This is resume driven development; in normal circumstances, any SQL database would be sufficient._
- **AI Integration**: ChatGPT is used to analyze job descriptions and propose resume content.
- **Hosting**: Docker containers for consistent deployment and scalability.

This stack was selected to ensure cross-platform reach, modularity, and the ability to leverage modern AI capabilities for resume optimization.

- [Design Level Event Storming](link-to-design-level-event-storming)
- [C1/C2/C3/C4 Diagrams](link-to-architecture-diagrams)
- [Architecture Decision Records (ADR)](link-to-adr)
