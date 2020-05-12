package com.todoapp.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todoapp.model.Todo;
import com.todoapp.repository.TodoRepository;

@Service
@Transactional
public class TodoService {

	@Autowired
	private TodoRepository todoRepository;
	
	
	public TodoService(TodoRepository todoRepository) {
		super();
		this.todoRepository = todoRepository;
	}

	public void saveTodo(Todo todo) {
		todoRepository.save(todo);
	}
	
	public List<Todo> showAllTodos() {
		return (List<Todo>) todoRepository.findAll();
	}
	
	public Todo editCustomer(int id) {
		return todoRepository.findById(id).get();
	}
	
	public void deleteTodo(int id) {
		todoRepository.deleteById(id);
	}
}
