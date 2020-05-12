package com.todoapp.repository;

import org.springframework.data.repository.CrudRepository;

import com.todoapp.model.Todo;

public interface TodoRepository extends CrudRepository<Todo, Integer> {

}
