package com.inventory.Jenkins;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Home {
    private Long id; 
    private String name;
    private String contact;
    private String address;
}
