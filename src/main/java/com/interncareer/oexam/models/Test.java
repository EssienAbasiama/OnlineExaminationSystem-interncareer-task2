package com.interncareer.oexam.models;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "test")
public class Test {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String test_course_title;
    private String time_duration;
    private CUnit cUnit;

    @OneToMany
    private List<Question> questions;

    private int numberOfQuestions;

    private long markPerQuestion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTest_course_title() {
        return test_course_title;
    }

    public void setTest_course_title(String test_course_title) {
        this.test_course_title = test_course_title;
    }

    public String getTime_duration() {
        return time_duration;
    }

    public void setTime_duration(String time_duration) {
        this.time_duration = time_duration;
    }

    public List<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }

    public int getNumberOfQuestions() {
        return numberOfQuestions;
    }

    public void setNumberOfQuestions(int numberOfQuestions) {
        this.numberOfQuestions = numberOfQuestions;
    }

    public long getMarkPerQuestion() {
        return markPerQuestion;
    }

    public CUnit getcUnit() {
        return cUnit;
    }

    public void setcUnit(CUnit cUnit) {
        this.cUnit = cUnit;
    }

    public void setMarkPerQuestion(long markPerQuestion) {
        this.markPerQuestion = markPerQuestion;
    }
}
