package com.interncareer.oexam.repository;

import com.interncareer.oexam.models.User;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    @Modifying
    @Query(value = "UPDATE users SET token=null,code=null,verified=1,verified_at=NOW(),updated_at=NOW() WHERE "+
            "token= :token AND code= :code",nativeQuery = true)
    @Transactional
    void verifyAccount(@Param("token")String token, @Param("code")String code);

    //  Update Password
    @Modifying
    @Query(value = "UPDATE users SET token=null,code=null,password=:password,updated_at=NOW() WHERE "+
            "token= :token AND code= :code",nativeQuery = true)
    @Transactional
        void updatePassword(@Param("token")String token, @Param("code")String code,@Param("password")String password);

//    Is User Verified?
    @Query(value = "SELECT verified FROM users WHERE email = :email", nativeQuery = true)
    boolean isVerified(@Param("email")String email);

//   Get User Detail
    @Query(value = "SELECT * FROM users WHERE email = :email", nativeQuery = true)
    User getUserDetails(@Param("email")String email);

//    Get User Password
    @Query(value = "SELECT password FROM users WHERE email = :email", nativeQuery = true)
    String getUserPassword(@Param("email")String email);

//    Get User Email
    @Query(value = "SELECT email FROM users WHERE email = :email", nativeQuery = true)
    String getUserEmail(@Param("email")String email);

//    Register User
@Modifying
@Query(value = "INSERT INTO users (first_name, email, password, token, code) VALUES" +
        "(:first_name, :email, :password, :token, :code)", nativeQuery = true )
@Transactional
void registerUser(@Param("first_name")String first_name,
                  @Param("email")String email,
                  @Param("password")String password,
                  @Param("token")String token,
                  @Param("code")int code);
}
