package com.mert.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.mert.model.Demo;
import com.mert.model.Task;
import com.mert.repository.DemoRepository;
import com.mert.repository.TaskRepository;
@Service
@Transactional
public class DemoService {


		private final DemoRepository demoRepository;
		

		public DemoService(DemoRepository demoRepository) {
			this.demoRepository = demoRepository;
		}
		
		public List<Demo> findAll(){
			List<Demo> demos = new ArrayList<>();
			demos = demoRepository.findAll();
			return demos;
		}
		
		public Demo findTask(int id){
			return demoRepository.findOne(id);
		}
		
		public void save(Demo demo){
			demoRepository.save(demo);
		}
		
		public void delete(int id){
			demoRepository.delete(id);

		}
	}