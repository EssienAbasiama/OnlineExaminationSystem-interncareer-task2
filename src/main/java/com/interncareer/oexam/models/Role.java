package com.interncareer.oexam.models;

/**
 * Enum representing roles in the system: TEACHER and STUDENT.
 */
public enum Role {
    TEACHER,
    STUDENT;

    // Getter methods
    public static Role getTeacherRole() {
        return TEACHER;
    }

    public static Role getStudentRole() {
        return STUDENT;
    }
}
