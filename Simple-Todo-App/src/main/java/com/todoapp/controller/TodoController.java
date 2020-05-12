package com.todoapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.todoapp.model.Todo;
import com.todoapp.service.TodoService;

@Controller
public class TodoController {

	@Autowired
	private TodoService todoService;
	
	@GetMapping("/")
	public String showHomePage() {
		return "homepage";
	}
	
	@GetMapping("/todo-form")
	public String showTodoForm() {
		return "todo-form";
	}
	
	@PostMapping("/save-todo")
	public String saveTodo(@ModelAttribute Todo todo) {
		todoService.saveTodo(todo);
		return "redirect:/";
	}
	
	@GetMapping("/show-all-todos")
	public String showAllTodos(ModelMap model) {
		model.addAttribute("todos", todoService.showAllTodos());
		return "show-todos";
	}
	
	@GetMapping("/edit-todo")
	public String showEditForm(@RequestParam int id, ModelMap model) {
		model.put("todo", todoService.editCustomer(id));
		return "todo-form";
	}
	
	@GetMapping("/delete-todo")
	public String deleteTodo(@RequestParam int id) {
		todoService.deleteTodo(id);
		return "redirect:/show-all-todos";
	}
	
	
	
	
	
	
	
	
}
