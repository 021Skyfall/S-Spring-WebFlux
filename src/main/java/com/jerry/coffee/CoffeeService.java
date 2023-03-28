package com.jerry.coffee;

import lombok.AllArgsConstructor;
import org.springframework.data.r2dbc.core.R2dbcEntityTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import reactor.core.publisher.Mono;

// TODO CoffeeService 에 Spring WebFlux 를 적용해 주세요. Spring MVC 방식 아닙니다!!
@Service
@Transactional
@AllArgsConstructor
public class CoffeeService {
    private final CoffeeRepository coffeeRepository;

    public Mono<Coffee> createCoffee(Coffee coffee) {
        return coffeeRepository.save(coffee);
    }
}
