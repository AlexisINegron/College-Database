# NSS University Database System

A relational database design and implementation project for a fictional university's School of Natural and Social Sciences (NSS), covering conceptual modeling, normalization, and MySQL implementation. Completed as a group project with a classmate for a Database Systems course.

## Overview

This project designs a complete relational database to manage a university department: its employees, faculty, staff, students, courses, majors, enrollments, and student employment records. The work followed a full database design lifecycle: conceptual modeling with an EER diagram, translation into a relational model, formal normalization to Boyce-Codd Normal Form (BCNF), and implementation as MySQL `CREATE TABLE` scripts with primary and foreign key constraints.

## Design Process

**1. EER Diagram**
An Enhanced Entity-Relationship diagram was built around eleven core entities (Department, Employee, Faculty, Staff, Instructor, Student, Graduate, Major, Course, Course Section, and Employer), using specialization/generalization (e.g., Faculty, Staff, and Instructor as sub-types of Employee; Graduate as a sub-type of Student) along with participation and cardinality constraints on every relationship.

**2. Relational Model**
Each entity and relationship from the EER diagram was translated into relations with defined attributes, primary keys, and foreign keys, including multi-valued attributes such as department office locations, which were split into their own relation.

**3. Normalization**
Functional dependencies were identified for every relation, and each relation was analyzed and decomposed as needed to satisfy Boyce-Codd Normal Form (BCNF), ensuring no redundant or transitive dependencies remained in the final schema.

**4. Implementation**
The finalized schema was implemented in MySQL with 21 tables, including `department`, `employee`, `faculty`, `staff`, `instructor`, `student`, `graduate`, `major`, `course`, `course_section`, `enroll`, `advise`, `employer`, and `employ_record`, with foreign key constraints enforcing referential integrity throughout (for example, `faculty` and `staff` reference `employee`, and `course_section` references both `course` and `instructor`).

## Key Design Decisions

- SSNs for both employees and students were added as unique identifying attributes beyond what was originally specified.
- Department locations were modeled as multi-valued, since a department can operate out of more than one location, requiring a separate relation.
- Sub-entities (Faculty, Staff, Instructor, Graduate) were modeled as specializations of their parent entities (Employee, Student) to avoid duplicating shared attributes.

## Files

- `ER diagram.png` / `ER diagram.erdplus` — Enhanced Entity-Relationship diagram
- `Relational diagram.png` / `Relational Diagram.erdplus` — Relational model derived from the EER diagram
- `Functional Dependencies BCNF.docx` — Functional dependency analysis and BCNF decomposition
- `Final Report.docx` — Full project writeup covering design rationale and process
- `SQL FINAL/` — MySQL `CREATE TABLE` scripts implementing the finalized schema

## Tools Used

- ERDPlus (EER and relational diagramming)
- MySQL (schema implementation)
- Microsoft Word (documentation and normalization writeup)

## What I Learned

This project reinforced how to carry a database from conceptual design through to a normalized, implementable schema, including how to reason about functional dependencies and apply BCNF decomposition to eliminate redundancy. It also highlighted the importance of early collaboration and time management on a project with a partner, since most of the implementation effort ended up concentrated late in the timeline.
