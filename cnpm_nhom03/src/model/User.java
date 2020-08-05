package model;

public class User {
    private String maTK;
    private String name;
    private String email;
    private String phone;
    private String adress;
    private String password;
    private int quyen;

    public User(String maTK, String name, String email, String phone, String adress, String password, int quyen) {
        this.maTK = maTK;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.adress = adress;
        this.password = password;
        this.quyen = quyen;
    }

    public User() {
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

    public String getMaTK() {
        return maTK;
    }

    public void setMaTK(String maTK) {
        this.maTK = maTK;
    }

    public int getQuyen() {
        return quyen;
    }

    public void setQuyen(int quyen) {
        this.quyen = quyen;
    }



}
