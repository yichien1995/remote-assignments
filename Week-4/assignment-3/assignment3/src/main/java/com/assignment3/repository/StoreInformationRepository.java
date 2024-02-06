package com.assignment3.repository;

import com.assignment3.entity.StoreInformation;
import org.springframework.data.repository.CrudRepository;

public interface StoreInformationRepository extends CrudRepository<StoreInformation, Integer> {
	StoreInformation findByEmail(String email);
}
