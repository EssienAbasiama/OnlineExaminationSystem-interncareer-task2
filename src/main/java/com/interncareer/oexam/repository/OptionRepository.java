package com.interncareer.oexam.repository;

import com.interncareer.oexam.models.Choice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OptionRepository extends JpaRepository<Choice,Integer> {
}
