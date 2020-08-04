package model;

public class Users {
    private String id;
    private String name;
    private String email;
    private String adress;
    private String phone;
    private String password;
    private int quyen;


    public Users(String id, String name, String email, String adress, String phone, String password, int quyen) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.adress = adress;
        this.password = password;
        this.quyen = quyen;
    }

    public Users() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String userName) {
        this.email = userName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getQuyen() {
        return quyen;
    }

    public void setQuyen(int quyen) {
        this.quyen = quyen;
    }

}
