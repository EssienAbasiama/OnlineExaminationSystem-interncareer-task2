package com.interncareer.oexam.repository;

import com.interncareer.oexam.models.Test;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionRepository extends JpaRepository<Test, Integer> {
}
