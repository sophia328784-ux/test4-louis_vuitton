package com.linkplay.lpmdpkit.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPAccount implements Serializable {
    private long expiredIn;
    private String refreshToken;
    private String source;
    private String token;
    private String userId;
    private String userName;
    private String userPassword;

    public long getExpiredIn() {
        return this.expiredIn;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public String getSource() {
        return this.source;
    }

    public String getToken() {
        return this.token;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getUserPassword() {
        return this.userPassword;
    }

    public void setExpiredIn(long j2) {
        this.expiredIn = j2;
    }

    public void setRefreshToken(String str) {
        this.refreshToken = str;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public void setUserPassword(String str) {
        this.userPassword = str;
    }
}
