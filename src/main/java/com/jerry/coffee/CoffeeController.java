package com.jerry.coffee;

import com.jerry.utils.UriCreator;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

import java.net.URI;

// TODO CoffeeController 에 Spring WebFlux 를 적용해 주세요. Spring MVC 방식 아닙니다!!
@RestController
@RequestMapping("/v12/coffees")
@AllArgsConstructor
public class CoffeeController {
}
