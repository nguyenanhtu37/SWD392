/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class Enterprise {
    private String EnterpriseID;
    private String EnterpriseAccount;
    private String EnterpriseName;
    private String EnterprisePassword;
    private String Phone;
    private String Taxcode;
    private String Place;
    private String EnterpriseDesc;
    private int isLocked;
    private int NumberOfReports;

    public Enterprise() {
    }

    /**
     *
     * @param EnterpriseAccount
     * @param EnterprisePassword
     */
    public Enterprise(String EnterpriseAccount, String EnterprisePassword) {
        this.EnterpriseID = newID();
        this.EnterpriseAccount = EnterpriseAccount;
        this.EnterprisePassword = EnterprisePassword;
    }

    public Enterprise(String EnterpriseID, String EnterpriseAccount, String EnterpriseName, String EnterprisePassword) {
        this.EnterpriseID = EnterpriseID;
        this.EnterpriseAccount = EnterpriseAccount;
        this.EnterpriseName = EnterpriseName;
        this.EnterprisePassword = EnterprisePassword;
    }
    
    

    public Enterprise(String EnterpriseID, String EnterpriseAccount, String EnterprisePassword) {
        this.EnterpriseID = EnterpriseID;
        this.EnterpriseAccount = EnterpriseAccount;
        this.EnterprisePassword = EnterprisePassword;
    }

    
    
    public Enterprise(String EnterpriseID, String EnterpriseName, String Phone, String Taxcode, String Place, String EnterpriseDesc) {
        this.EnterpriseID = EnterpriseID;
        this.EnterpriseName = EnterpriseName;
        this.Phone = Phone;
        this.Taxcode = Taxcode;
        this.Place = Place;
        this.EnterpriseDesc = EnterpriseDesc;
    }

    public Enterprise(String EnterpriseID) {
        this.EnterpriseID = EnterpriseID;
    }

    public Enterprise(String EnterpriseID, String EnterpriseName, String EnterprisePassword, String Phone, String Taxcode, String Place, String EnterpriseDesc, int isLocked, int NumberOfReports) {
        this.EnterpriseID = EnterpriseID;
        this.EnterpriseName = EnterpriseName;
        this.EnterprisePassword = EnterprisePassword;
        this.Phone = Phone;
        this.Taxcode = Taxcode;
        this.Place = Place;
        this.EnterpriseDesc = EnterpriseDesc;
        this.isLocked = isLocked;
        this.NumberOfReports = NumberOfReports;
    }
    


    
    public Enterprise(String EnterpriseID, String EnterpriseAccount, String EnterpriseName, String EnterprisePassword, String Phone, String Taxcode, String Place, String EnterpriseDesc, int isLocked, int NumberOfReports) {
        this.EnterpriseID = EnterpriseID;
        this.EnterpriseAccount = EnterpriseAccount;
        this.EnterpriseName = EnterpriseName;
        this.EnterprisePassword = EnterprisePassword;
        this.Phone = Phone;
        this.Taxcode = Taxcode;
        this.Place = Place;
        this.EnterpriseDesc = EnterpriseDesc;
        this.isLocked = isLocked;
        this.NumberOfReports = NumberOfReports;
    }

    public int getNumberOfReports() {
        return NumberOfReports;
    }

    public void setNumberOfReports(int NumberOfReports) {
        this.NumberOfReports = NumberOfReports;
    }

    public int getIsLocked() {
        return isLocked;
    }

    public void setIsLocked(int isLocked) {
        this.isLocked = isLocked;
    }

    

    public String getEnterpriseID() {
        return EnterpriseID;
    }

    public void setEnterpriseID(String EnterpriseID) {
        this.EnterpriseID = EnterpriseID;
    }

    public String getEnterpriseAccount() {
        return EnterpriseAccount;
    }

    public void setEnterpriseAccount(String EnterpriseAccount) {
        this.EnterpriseAccount = EnterpriseAccount;
    }

    public String getEnterpriseName() {
        return EnterpriseName;
    }

    public void setEnterpriseName(String EnterpriseName) {
        this.EnterpriseName = EnterpriseName;
    }

    public String getEnterprisePassword() {
        return EnterprisePassword;
    }

    public void setEnterprisePassword(String EnterprisePassword) {
        this.EnterprisePassword = EnterprisePassword;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getTaxcode() {
        return Taxcode;
    }

    public void setTaxcode(String Taxcode) {
        this.Taxcode = Taxcode;
    }

    public String getPlace() {
        return Place;
    }

    public void setPlace(String Place) {
        this.Place = Place;
    }

    public String getEnterpriseDesc() {
        return EnterpriseDesc;
    }

    public void setEnterpriseDesc(String EnterpriseDesc) {
        this.EnterpriseDesc = EnterpriseDesc;
    }

    public String newID() {
        if (EnterpriseDB.getListEnter().isEmpty()) {
            return "enterprise100";
        }
        ArrayList<Enterprise> listEnter = EnterpriseDB.getListEnter();
        for (Enterprise enter : listEnter) {
            String numID = enter.getEnterpriseID().substring(10);
            String nextID = "enterprise" + (Integer.parseInt(numID) + 1);
            if (!isDupplicatedID(nextID)) {
                return nextID;
            }
        }
        return null;
    }

    public boolean isDupplicatedID(String id) {
        ArrayList<Enterprise> listEnter = EnterpriseDB.getListEnter();
        for (Enterprise enter : listEnter) {
            if (enter.getEnterpriseID().equals(id)) {
                return true;
            }
        }
        return false;
    }

    public boolean isDupplicatedAccount() {
        ArrayList<Enterprise> listEnter = EnterpriseDB.getListEnter();
        for (Enterprise enter : listEnter) {
            if (enter.getEnterpriseID().equals(this.EnterpriseAccount)) {
                return true;
            }
        }
        return false;
    }

    public int addNew() {
        return EnterpriseDB.addNewEnter(this);
    }
    
    
    public Enterprise login(String acc, String pass) {
        try {
            return EnterpriseDB.login(acc, pass);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Enterprise.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int addDataEnter() {
        return EnterpriseDB.addData(this);
    }

    public Enterprise getEnterbyId() {
        return EnterpriseDB.getEnterbyID(this.EnterpriseID);
    }
    
    public Enterprise changesPass(){
        return EnterpriseDB.changePass(this.EnterpriseID, this.EnterprisePassword);
    }
    
    public Enterprise getIdbyName(String name){
        return EnterpriseDB.getIdbyName(name);
    }

    @Override
    public String toString() {
        return "Enterprise{" + "EnterpriseID=" + EnterpriseID + ", EnterpriseAccount=" + EnterpriseAccount + ", EnterpriseName=" + EnterpriseName + ", EnterprisePassword=" + EnterprisePassword + ", Phone=" + Phone + ", Taxcode=" + Taxcode + ", Place=" + Place + ", EnterpriseDesc=" + EnterpriseDesc + '}';
    }

}
