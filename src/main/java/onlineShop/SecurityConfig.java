package onlineShop;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AnyRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private DataSource dataSource;


	// 如果匹配数据库，看是否有权限，没有的话reject
	protected void configure(HttpSecurity http) throws Exception {
		http
		// 在这里暂时不实现csrf里的check的过程，所以暂时disable，否则会有错误
		.csrf().disable()
		.formLogin()
		.loginPage("/login")
		.and()
		.authorizeRequests()
		.antMatchers("/cart/**").hasAuthority("ROLE_USER")
		.antMatchers("/order/**").hasAnyAuthority("ROLE_USER")
		.antMatchers("/get*/**").hasAnyAuthority("ROLE_ADMIN", "ROLE_USER")
		.antMatchers("/admin/**").hasAnyAuthority("ROLE_ADMIN")
		.anyRequest().permitAll()
		.and()
		.logout()
		.logoutUrl("/logout");
	}


	// 传进来的用户名密码是否匹配数据库
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		.inMemoryAuthentication()
		.withUser("ningdafei@gmail.com").password("1111").authorities("ROLE_ADMIN")
		.and().withUser("loushuni@gmail.com").password("1111").authorities("ROLE_ADMIN");

		auth
		.jdbcAuthentication()
		.dataSource(dataSource)
		.usersByUsernameQuery("SELECT emailId, password, enabled FROM users WHERE emailId = ?")
		.authoritiesByUsernameQuery("SELECT emailId, authorities FROM authorities WHERE emailId = ?");


	}
}
