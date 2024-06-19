/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import static model.DatabaseInfo.userDB;

/**
 *
 * @author ASUS
 */
public class UserDB implements DatabaseInfo {

    public static ArrayList<User> getListUser() {
        ArrayList<User> res = new ArrayList<>();
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from users");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (rs.getString(3) == null) {
                    res.add(new User(rs.getString(1), rs.getString(2), rs.getString(4)));
                } else {
                    res.add(new User(
                            rs.getString(1), rs.getString(2), rs.getString(3),
                            rs.getString(4), rs.getString(5), rs.getString(6),
                            rs.getDate(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)
                    ));
                }
            }
        } catch (Exception e) {
        }
        return res;
    }

    public static ArrayList<User> getListUser_Fake() {
        ArrayList<User> res = new ArrayList<>();
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE isLocked IS NULL;");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (rs.getString(3) == null) {
                    res.add(new User(rs.getString(1), rs.getString(2), rs.getString(4)));
                } else {
                    res.add(new User(
                            rs.getString(1), rs.getString(2), rs.getString(3),
                            rs.getString(4), rs.getString(5), rs.getString(6),
                            rs.getDate(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)
                    ));
                }
            }
        } catch (Exception e) {
        }
        return res;
    }

    public static ArrayList<User> getListUser_Locked() {
        ArrayList<User> res = new ArrayList<>();
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE isLocked = 1;");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (rs.getString(3) == null) {
                    res.add(new User(rs.getString(1), rs.getString(2), rs.getString(4)));
                } else {
                    res.add(new User(
                            rs.getString(1), rs.getString(2), rs.getString(3),
                            rs.getString(4), rs.getString(5), rs.getString(6),
                            rs.getDate(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)
                    ));
                }
            }
        } catch (Exception e) {
        }
        return res;
    }

    public static int addNewUser(User newUser) {
        int res = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            MessageDigest md = MessageDigest.getInstance("SHA-256");

            byte[] passwordBytes = newUser.getUserPassword().getBytes();
            byte[] hashedPass = md.digest(passwordBytes);

            StringBuilder hexHash = new StringBuilder();
            for (byte b : hashedPass) {
                hexHash.append(String.format("%02x", b));
            }

            PreparedStatement ps = con.prepareStatement("insert into users(userid, useraccount, password) values (?,?,?)");
            ps.setString(1, newUser.getUserID());
            ps.setString(2, newUser.getUserAccount());
            ps.setString(3, hexHash.toString());
            res = ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return res;
    }

    public boolean existsEmail(User userDetail) {
        try (Connection con = DatabaseInfo.getConnect()) {
            String query = "select * from Users where UserAccount=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, userDetail.getUserAccount());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                DatabaseInfo.closeResultSet(rs);
                DatabaseInfo.closeStatement(ps);
                DatabaseInfo.closeConnection(con);
                return true;
            }
            DatabaseInfo.closeResultSet(rs);
            DatabaseInfo.closeStatement(ps);
            DatabaseInfo.closeConnection(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

    public boolean existsEmailAndFlag(User userDetail) {
        try (Connection con = DatabaseInfo.getConnect()) {
            String query = "select * from Users where UserAccount =? and signupFlag= ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, userDetail.getUserAccount());
            ps.setString(2, userDetail.getSignupFlag());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                DatabaseInfo.closeResultSet(rs);
                DatabaseInfo.closeStatement(ps);
                DatabaseInfo.closeConnection(con);
                return true;
            }
            DatabaseInfo.closeResultSet(rs);
            DatabaseInfo.closeStatement(ps);
            DatabaseInfo.closeConnection(con);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;

    }

    public static User getUserGG(User user) {
        User res = new User();
        Connection connection = null;
        PreparedStatement statement = null;
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("Select * from Users where UserAccount = ?");
            ps.setString(1, user.getUserAccount());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = new User();
                res.setUserAccount(rs.getString("UserAccount"));
                res.setUserPassword(rs.getString("password"));
                res.setUserName(rs.getString("fullname"));
                res.setActivationFlag(rs.getString("activationFlag"));
                res.setVerificationToken(rs.getString("verificationToken"));
                res.setSignupFlag(rs.getString("signupFlag"));
                res.setUserFbId(rs.getString("UserFbId"));
                res.setUserGmailId(rs.getString("UserGmailId"));
                res.setProfilePic(rs.getString("profilePic"));
            }
            DatabaseInfo.closeResultSet(rs);
        } catch (SQLException e) {
            e.printStackTrace();
            return res;
        } finally {
            DatabaseInfo.closeStatement(statement);
            DatabaseInfo.closeConnection(connection);
        }
        return res;
    }

    public static boolean addNewUserGG(User newUser) {
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("insert into Users (UserID,UserAccount,FullName,Password,Phone,Gender,DOB,Skills,activationFlag,verificationToken,signupFlag,UserFbId,UserGmailId,profilePic) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, newUser.getUserID());
            ps.setString(2, newUser.getUserAccount());
            ps.setString(3, newUser.getUserName());
            ps.setString(4, newUser.getUserPassword());
            ps.setString(5, newUser.getPhone());
            ps.setString(6, newUser.getGender());
            ps.setDate(7, newUser.getUserDOB());
            ps.setString(8, newUser.getUserSkills());
            ps.setString(9, newUser.getActivationFlag());
            ps.setString(10, newUser.getVerificationToken());
            ps.setString(11, newUser.getSignupFlag());
            ps.setString(12, newUser.getUserFbId());
            ps.setString(13, newUser.getUserGmailId());
            ps.setString(14, newUser.getProfilePic());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public static User getUser(String account) {
        User res = new User();
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from users where UserAccount = ?");
            ps.setString(1, account);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = new User(rs.getString(1), rs.getString(2), rs.getString(4));
                return res;
            }
        } catch (Exception e) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public static User login(String acc, String pass) throws NoSuchAlgorithmException {
        User u = getUser(acc);
        if (u != null) {
            String userPass = u.getUserPassword();
            if (userPass != null) {
                MessageDigest md = MessageDigest.getInstance("SHA-256");

                byte[] passwordBytes = pass.getBytes();
                byte[] hashedPass = md.digest(passwordBytes);

                StringBuilder hexHash = new StringBuilder();
                for (byte b : hashedPass) {
                    hexHash.append(String.format("%02x", b));
                }

                if (hexHash.toString().equals(userPass)) {
                    return u;
                }
            }
        }
        return null;
    }

    public static int addDate(User addUser) {
        int res = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("update Users set FullName =? ,Phone=? ,Gender=?,DOB=?,Skills=? where UserID =?");
            ps.setString(1, addUser.getUserName());
            ps.setString(2, addUser.getPhone());
            ps.setString(3, addUser.getGender());
            ps.setDate(4, addUser.getUserDOB());
            ps.setString(5, addUser.getUserSkills());
            ps.setString(6, addUser.getUserID());
            res = ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return res;
    }

    public static User getUserID(String userID) {
        User res = null;
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("Select * from Users where UserID = ?");
            ps.setString(1, userID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = new User(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getString(8));
            }
        } catch (Exception e) {

        }
        return res;
    }

    public static User changpass(String UserID, String newPassword) {
        User res = null;
        try (Connection con = DatabaseInfo.getConnect()) {
            MessageDigest md = MessageDigest.getInstance("SHA-256");

            byte[] passwordBytes = newPassword.getBytes();
            byte[] hashedPass = md.digest(passwordBytes);

            StringBuilder hexHash = new StringBuilder();
            for (byte b : hashedPass) {
                hexHash.append(String.format("%02x", b));
            }
            PreparedStatement ps = con.prepareStatement("Update Users set Password =? where UserID =?");
            ps.setString(1, hexHash.toString());
            ps.setString(2, UserID);
            ResultSet rs = ps.executeQuery();
        } catch (Exception e) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return res;
    }

    public static int deleteUser(String UserID) {
        int res = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            String sql = "DELETE FROM Users WHERE UserID = ?";
            System.out.println("SQL Query: " + sql); // In câu lệnh SQL để kiểm tra
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, UserID);
            res = ps.executeUpdate();
            System.out.println("Rows affected: " + res); // In số dòng bị ảnh hưởng để kiểm tra
        } catch (SQLException e) {
            e.printStackTrace();
            // Hoặc in ra một thông báo lỗi cụ thể nếu cần
        }
        return res;
    }

    public static int lockUser(String UserID) {
        int res = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            String sql = "UPDATE Users SET isLocked = 1 WHERE UserID = ?";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, UserID);
                res = ps.executeUpdate();
                System.out.println("User locked successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    public static int unlockUser(String UserID) {
        int res = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            // Truy vấn SQL UPDATE để cập nhật trường isLocked thành 1
            String sql = "UPDATE Users SET isLocked = NULL WHERE UserID = ?";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, UserID);
                res = ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

}
