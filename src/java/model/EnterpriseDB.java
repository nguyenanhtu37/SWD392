/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class EnterpriseDB implements DatabaseInfo {

    public static ArrayList<Enterprise> getListEnter() {
        ArrayList<Enterprise> res = new ArrayList<>();
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from enterprise");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (rs.getString(3) == null) {
                    res.add(new Enterprise(rs.getString(1), rs.getString(2), rs.getString(4)));
                } else {
                    res.add(new Enterprise(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(8), rs.getString(6), rs.getString(7),rs.getInt(10),rs.getInt(9)));
                }
            }
        } catch (Exception e) {
        }
        return res;
    }

    public static int addNewEnter(Enterprise newEnterprise) {
        int res = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            MessageDigest md = MessageDigest.getInstance("SHA-256");

            byte[] passwordBytes = newEnterprise.getEnterprisePassword().getBytes();
            byte[] hashedPass = md.digest(passwordBytes);

            StringBuilder hexHash = new StringBuilder();
            for (byte b : hashedPass) {
                hexHash.append(String.format("%02x", b));
            }

            PreparedStatement ps = con.prepareStatement("insert into enterprise(enterpriseid,enterpriseaccount,passenter) values (?,?,?)");
            ps.setString(1, newEnterprise.newID());
            ps.setString(2, newEnterprise.getEnterpriseAccount());
            ps.setString(3, hexHash.toString());
            res = ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(EnterpriseDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return res;
    }

    public static Enterprise getEnter(String account) {
        Enterprise res = new Enterprise();
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("Select * from Enterprise where EnterpriseAccount =?");
            ps.setString(1, account);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = new Enterprise(rs.getString(1), rs.getString(2), rs.getString(4));
                return res;
            }
        } catch (Exception e) {
            Logger.getLogger(EnterpriseDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public static int updatePassword(Enterprise enter) {
        int res = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            MessageDigest md = MessageDigest.getInstance("SHA-256");

            byte[] passwordBytes = enter.getEnterprisePassword().getBytes();
            byte[] hashedPass = md.digest(passwordBytes);

            StringBuilder hexHash = new StringBuilder();
            for (byte b : hashedPass) {
                hexHash.append(String.format("%02x", b));
            }
            PreparedStatement ps = con.prepareStatement("update enterprise set passenter=? where enterpriseaccount=?");
            ps.setString(2, enter.getEnterpriseAccount());
            ps.setString(1, hexHash.toString());
            res = ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(EnterpriseDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return res;
    }

    public static Enterprise login(String acc, String pass) throws NoSuchAlgorithmException {
        Enterprise e = getEnter(acc);
        if (e != null) {
            String enterPass = e.getEnterprisePassword();
            if (enterPass != null) {
                MessageDigest md = MessageDigest.getInstance("SHA-256");

                byte[] passwordBytes = pass.getBytes();
                byte[] hashedPass = md.digest(passwordBytes);

                StringBuilder hexHash = new StringBuilder();
                for (byte b : hashedPass) {
                    hexHash.append(String.format("%02x", b));
                }
                if (hexHash.toString().equals(enterPass)) {
                    return e;
                }
            }
        }
        return null;
    }

    public static int addData(Enterprise addEnter) {
        int res = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("Update Enterprise set EnterpriseName = ?,Phone= ?,Place = ? ,EnterpriseDesc =?,Taxcode =? Where EnterpriseID=? ");
            ps.setString(1, addEnter.getEnterpriseName());
            ps.setString(2, addEnter.getPhone());
            ps.setString(3, addEnter.getPlace());
            ps.setString(4, addEnter.getEnterpriseDesc());
            ps.setString(5, addEnter.getTaxcode());
            ps.setString(6, addEnter.getEnterpriseID());
            res = ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(EnterpriseDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return res;
    }

    public static Enterprise getEnterbyID(String enterID) {
        Enterprise res = null;
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from Enterprise where EnterpriseID =?");
            ps.setString(1, enterID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = new Enterprise(rs.getString(1), rs.getString(3), rs.getString(5), rs.getString(8), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {

        }
        return res;
    }

    public static Enterprise getIdbyName(String enterName) {
        Enterprise res = null;
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from Enterprise where EnterpriseName = ?");
            ps.setString(1, enterName);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = new Enterprise(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {

        }
        return res;
    }

    public static Enterprise getEnterAccforjob(String enterID) {
        Enterprise res = null;
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from Enterprise where EnterpriseID =?");
            ps.setString(1, enterID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = new Enterprise(rs.getString(2), rs.getString(4));
            }
        } catch (Exception e) {

        }
        return res;
    }

    public static Enterprise changePass(String enterpriseID, String newPassword) {
        Enterprise res = null;
        try (Connection con = DatabaseInfo.getConnect()) {
            MessageDigest md = MessageDigest.getInstance("SHA-256");

            byte[] passwordBytes = newPassword.getBytes();
            byte[] hashedPass = md.digest(passwordBytes);

            StringBuilder hexHash = new StringBuilder();
            for (byte b : hashedPass) {
                hexHash.append(String.format("%02x", b));
            }
            PreparedStatement ps = con.prepareStatement("UPDATE Enterprise SET PassEnter = ? WHERE EnterpriseID = ?");
            ps.setString(1, hexHash.toString());
            ps.setString(2, enterpriseID);
            ResultSet rs = ps.executeQuery();
        } catch (Exception e) {
            Logger.getLogger(EnterpriseDB.class.getName()).log(Level.SEVERE, null, e);
        }
        return res;
    }

    public static ArrayList<Enterprise> getListEnter_Fake() {
        ArrayList<Enterprise> res = new ArrayList<>();
        try (Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement ps = con.prepareStatement("select * from Enterprise where isLocked IS NULL");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                    if (rs.getString(3) == null) {
                res.add(new Enterprise(
                        rs.getString("EnterpriseID"),
                        rs.getString("EnterpriseAccount"),
                        rs.getString("EnterpriseName"),
                        rs.getString("EnterprisePassword"),
                        rs.getString("Phone"),
                        rs.getString("Taxcode"),
                        rs.getString("Place"),
                        rs.getString("EnterpriseDesc"),
                        rs.getInt("isLocked"),
                        rs.getInt("NumberOfReports")
                ));

//                    } else {
//                    res.add(new Enterprise(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
//                    }
            }
        } catch (Exception e) {
        }
        return res;
    }
}
