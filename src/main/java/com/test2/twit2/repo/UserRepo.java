package com.test2.twit2.repo;

import com.test2.twit2.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long>{
    User findByUsername(String username);

    User findByActivationCode(String code);
}
