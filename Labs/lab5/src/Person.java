package Labs.lab5.src;

import java.time.LocalDate;

public class Person {
    private Name name;
    private LocalDate birthday;
    private long ssn;

    public Person(Name n, LocalDate birthday, long s) {
        name = n;
        this.birthday = birthday;
        ssn = s;
    }

    public Person(Name n) {
        this(n, LocalDate.of(2023, 1, 1), 123456789);
    }

    public Name getName() {
        return name;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    protected long getSsn() {
        return ssn;
    }

    public void setName(Name n) {
        name = n;
    }

    public void setBirthday(LocalDate d) {
        birthday = d;
    }

    @Override
    public String toString() {
        return "Name: " + name + "\nBirthday: " + birthday + "\n";
    }
}