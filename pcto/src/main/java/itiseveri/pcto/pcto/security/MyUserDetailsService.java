package itiseveri.pcto.pcto.security;



import itiseveri.pcto.pcto.model.Lavoratore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    UserRepository userLavoratoreRepository;
    //cerca user attraverso lo usernam
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Lavoratore> userLavoratore = userLavoratoreRepository.findLavoratoreByUsername(username);

        userLavoratore.orElseThrow(() -> new UsernameNotFoundException("Not found: " + username));

        return userLavoratore.map(MyUserDetails::new).get();
    }
}