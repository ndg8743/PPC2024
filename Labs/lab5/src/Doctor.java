package Labs.lab5.src;

public class Doctor extends Medical {
	private static long id = 1000;
	private long d_ID;
	private String[] specialty;
	private String email;

	public Doctor(Name n, String[] specialty, double salary) {
		super(n, salary);
		d_ID = id++;
		this.specialty = specialty;
		this.email = n.toString().toLowerCase() + "@hospital.com";
	}

	public long getId() {
		return d_ID;
	}

	public String[] getSpecialty() {
		return specialty;
	}

	public String getEmail() {
		return email;
	}

	public void addSpecialty(String s) {
		String[] newSpecialty = new String[specialty.length + 1];
		System.arraycopy(specialty, 0, newSpecialty, 0, specialty.length);
		newSpecialty[specialty.length] = s;
		specialty = newSpecialty;
	}

	@Override
	public String toString() {
		return "Doctor ID: " + d_ID + "\n" +
			   "Name: " + getName() + "\n" +
			   "Specialty: " + String.join(", ", specialty) + "\n" +
			   "Email: " + email + "\n" +
			   "Salary: " + getSalary();
	}
}