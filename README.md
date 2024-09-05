# Medical Consultation System - PHP Web Application

## Project Description

This project is a PHP-based medical consultation management system, designed to handle tasks such as patient registration, medication management, and consultations. The system supports multiple functionalities including user authentication, session management, patient data management, and interaction with medications and examinations. The project follows a Model-View-Controller (MVC) pattern to ensure separation of concerns and maintainable code.

### Features

- **User Authentication**: Users can log in and out securely with proper error handling for incorrect credentials.
- **Patient Management**: Create new patient records, update existing ones, and handle patient data securely.
- **Consultation Management**: Start and end consultations for patients, including the management of medications and examinations.
- **Medication and Examination Tracking**: Add, update, or delete medications and examinations for patients during consultations.
- **Error Handling**: Errors such as invalid user credentials or duplicate patient entries are handled gracefully.
- **Session Management**: Uses PHP sessions to track user states and store relevant data such as login status and error messages.

## Project Structure

### Controllers

- **MainController.php**: The main entry point of the application, managing various actions such as user login, patient management, and consultation handling.

### Services (Business Logic)
- **PatientService**: Handles patient-related operations such as adding, updating, and fetching patient records.
- **MedicationService**: Manages medications, including inserting and updating medication data.
- **ExaminationService**: Manages patient examinations, including inserting and updating examination data.
- **ConsultationService**: Responsible for managing consultations and handling the insertion of related data such as medications and examinations.

### Entities
- **User**: Represents a user entity and manages authentication.
- **Examination**: Represents examination-related data for a patient.

### Exceptions
- **PasswordIncorrectException**: Thrown when a user's password is incorrect.
- **UserDoesntExistException**: Thrown when an attempt to log in with a non-existent user occurs.
- **PatientAlreadyExistsException**: Thrown when attempting to add a patient that already exists.

### Views
- **Presentation/`header.php`, `footer.php`**: Common UI components for the header and footer.
- **Presentation/`publicpage.php`**: View rendered for unauthenticated users.
- **Presentation/`newPatientView.php`**: View for adding a new patient.
- **Presentation/`consultationView.php`**: View for handling a new consultation.
- **Presentation/`editMedicationsView.php`**: View for editing medications.
- **Presentation/`editExaminationsView.php`**: View for editing examinations.
- **Presentation/`dashboard.php`**: Main dashboard for logged-in users.

## Main Functionalities

### 1. **User Authentication**

- Handles login attempts by verifying email and password.
- Redirects authenticated users to the main dashboard.
- Logs users out and clears session data.

### 2. **Patient Management**

- **Add New Patient**: Registers new patients and stores their information.
- **Edit Patient**: Updates existing patient details.
- **View Patient List**: Displays all registered patients on the dashboard.
- **Handle Existing Patients**: Allows users to either start a new consultation or edit patient details.

### 3. **Consultation Management**

- **New Consultation**: Start a new consultation for a selected patient, allowing the assignment of medications and examinations.
- **End Consultation**: Finalize the consultation by saving all entered medications and examinations for the patient.

### 4. **Medication and Examination Management**

- **Add/Update Medications**: Insert or modify medications during the consultation process.
- **Add/Update Examinations**: Insert or modify examinations for a patient during a consultation.

### Error Handling

- Errors during login, patient creation, and consultations are displayed to the user, and appropriate redirections are handled.

## Installation Guide

### Prerequisites

- **PHP** (>= 7.4)
- **Composer** for dependency management
- A **web server** such as Apache or Nginx
- A **relational database** (MySQL, PostgreSQL, etc.)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Future Enhancements

- **Role-Based Access Control (RBAC)**: Implement different access levels (e.g., doctors, admins) with different permissions.
- **Patient History**: Allow viewing of detailed consultation history for each patient.
- **Enhanced Security**: Add stronger encryption for sensitive data like passwords and patient information.
- **Search and Filtering**: Add search functionality to quickly find patients or consultations.

---
