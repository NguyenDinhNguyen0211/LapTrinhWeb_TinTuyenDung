package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Account;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DAOAccount {
    private String message = "error!";
    private Account account = null;

    private boolean isAdmin = false;
    private boolean isBusi = false;
    private boolean isCandi = false;

    public boolean isAdmin() {
        return isAdmin;
    }

    public boolean isBusi() {
        return isBusi;
    }

    public boolean isCandi() {
        return isCandi;
    }

    public String getMessage() {
        return message;
    }

    public Account getAccount() {
        return account;
    }

    public List<Account> getListAccount() {
        List<Account> listAccount = new ArrayList<Account>();
        String query = "select * from account";
        listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).mapToBean(Account.class).list());
        return listAccount;
    }

    public boolean checkAdmin() {
        return (isAdmin = account.getRole() == 0);
    }

    public boolean checkBusi() {
        return (isBusi = account.getRole() == 2);
    }

    public boolean checkCandi() {
        return (isCandi = account.getRole() == 1);
    }

    public boolean checkAccount(String username, String password, int role) {
        String query = "select * from account where username = ? and password = ? and role = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, username)
                .bind(1, password)
                .bind(2, role)
                .mapToBean(Account.class).list());
        for (Account account : listAccount) {
            if (account.getUsername().equals(username) && account.getPassword().equals(password) && account.getRole() == role) {
                this.account = account;
                return true;
            }
        }
        message = "Sai tài khoản hoặc mật khẩu";
        return false;
    }

    public boolean checkEmail(String email) {
        String query = "select * from account where email = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, email)
                .mapToBean(Account.class).list());
        for (Account account : listAccount) {
            if (account.getEmail().equals(email)) {
                this.account = account;
                return true;
            }
        }
        return false;
    }

    public boolean register(String username, String password, String name, String email, String phone, int gen, String img, int role, Date date) {
        String query = "INSERT INTO account (username, password,name,email, phone,gen,img,role,dateCreate) VALUES (?,?,?,?,?,?,?,?,?)";
        if (!checkUsernameExists(username)) {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(query)
                            .bind(0, username)
                            .bind(1, password)
                            .bind(2, name)
                            .bind(3, email)
                            .bind(4, phone)
                            .bind(5, gen)
                            .bind(6, img)
                            .bind(7, role)
                            .bind(8, date)
                            .execute()
            );
            return true;
        }
        return false;
    }

    public boolean checkUsernameExists(String username) {
        String query = "select * from account where username = ?";
        List<Account> listAccount = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, username).mapToBean(Account.class).list());
        if (listAccount.size() > 0) {
            for (Account account : listAccount) {
                if (account.getUsername().equals(username)) {
                    return true;
                }
            }
        }
        message = "Tài khoản đã tồn tại";
        return false;
    }


    public static void main(String[] args) {
        DAOAccount dao = new DAOAccount();
        List<Account> l = dao.getListAccount();
        for (Account a : l) {
            System.out.println(a.toString());
        }

//        dao.registerCandi_Admin("abc", "111", "abc@gmail.com", 2);
//        System.out.println(dao.checkAccount("admin@gmail.com", "321"));
//        dao.registerBusi("abc2", "1112", null,"abc@gmail.com", null,0,null,1);

    }


}
