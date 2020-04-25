package com.mert.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mert.model.Demo;
import com.mert.model.Task;

@Repository("demoRepository")
public interface DemoRepository extends JpaRepository<Demo, Integer> {
}
