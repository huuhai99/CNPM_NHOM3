package model;

public class Accounts {
    private String id;
    private String userName;
    private String password;
    private String email;
    private String address;
    private String numberPhone;
    private int type;

    public Accounts(String id, String userName, String password, String email, String numberPhone, int type) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.numberPhone = numberPhone;
        this.type = type;

    }

    public Accounts() {

    }

    public Accounts(String userName, String password, String email, String numberPhone, String address) {
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.numberPhone = numberPhone;
        this.address = address;

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
