package kh.com.camarket.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Yuth on 3/23/2017.
 */
@Entity
public class Authorities {

    @Id
    @GeneratedValue
    private int autoritiesId;

    private String username;
    private String authority;

    public int getAutoritiesId() {
        return autoritiesId;
    }

    public void setAutoritiesId(int autoritiesId) {
        this.autoritiesId = autoritiesId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAutority() {
        return authority;
    }

    public void setAutority(String autority) {
        this.authority = autority;
    }
}
