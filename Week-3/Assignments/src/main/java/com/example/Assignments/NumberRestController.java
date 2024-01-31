package com.example.Assignments;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping()
public class NumberRestController {
    @GetMapping("/data")
    public String addTotal(@RequestParam(required = false, name = "number") String input) {
        if (input == null) {
            return "Lack of Parameter";
        }

        int number;
        int result;

        try {
            number = Integer.parseInt(input);
            if (number < 0) {
                return "Wrong Parameter";
            }
            result = (1 + number) * number / 2;
            return Integer.toString(result);
        } catch (NumberFormatException e) {
            return "Wrong Parameter";
        }
    }
}