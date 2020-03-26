package pl.sda.services;
import pl.sda.models.User;
import java.util.ArrayList;
import java.util.List;
//Tworzymy tutaj enuma taki skrot na singletona z lista Userow
public enum UserService {
    //    Tworzymy singletona z tej klasy. Mozna to zrobic tradycyjnym singletonem albo zmienic class na enum,
//    taki skrot( i my tak zrobimy). Tutaj jak w normalny, enumie jest kilka opcji my dajemy tylko 1 - INSTANCE:
    //    enum moze miec construktor, pola klasy , metody(getters and setters) etc.
    INSTANCE;
    private List<User> users = new ArrayList<>();
    //    i poniewaz to jes enum zmieniamy public na private w constructor:
    private UserService(){
//        jakbysmy uzywali baze danych to tutaj zamiast na sztywno dane bylyby zapytania do bazy danych:
        users.add(new User("admin", "abc1234"));
        users.add(new User("user", "password"));
    }
    //    Teraz tworzymy metode do logowania:
    public User loginUser(String login, String password){
        return users.stream()
                .filter(user ->user.getLogin().equals(login)
                        && user.getPassword().equals(password))
                .findFirst()
                .orElse(null);
    }
}