package com.test2.twit2;

import com.test2.twit2.controller.MainController;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.core.StringContains.containsString;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestBuilders.formLogin;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class LoginTest {
    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private MainController controller;

    @Test
    public void contextLoads() throws Exception{
        this.mockMvc.perform(get("/")).andDo(print()).andExpect(status().isOk())
                .andExpect(content().string(containsString("Hello, guest!")))
                .andExpect(content().string(containsString("Please, login")));

    }

    @Test
    public void accessDeniedTest() throws Exception{
        this.mockMvc.perform(get("/main")).andDo(print()).andExpect(status().is3xxRedirection()).andExpect(redirectedUrl("http://localhost/login"));
    }

/*    @Test
    public void correctLoginTest() throws Exception{
        this.mockMvc.perform(formLogin().user("2").password("2")).andDo(print()).andExpect(status().is3xxRedirection()).andExpect(redirectedUrl("/"));
    }*/

    @Test
    public void badCredentials() throws Exception {
        this.mockMvc.perform(post("/login").param("user", "Alfred")).andDo(print()).andExpect(status().isForbidden());
    }

}
