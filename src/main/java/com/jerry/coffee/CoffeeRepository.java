package com.jerry.coffee;

import org.springframework.data.r2dbc.repository.R2dbcRepository;

public interface CoffeeRepository extends R2dbcRepository<Coffee, Long> {
}
