package com.linkplay.lpmdpkit.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BaseUserInfoBean implements Serializable {
    private long expires_in;
    private String msg;
    private String refresh_token;
    private String token;
    private String username;

    public long getExpires_in() {
        return this.expires_in;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getRefresh_token() {
        return this.refresh_token;
    }

    public String getToken() {
        return this.token;
    }

    public String getUsername() {
        return this.username;
    }

    public void setExpires_in(long j2) {
        this.expires_in = j2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setRefresh_token(String str) {
        this.refresh_token = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }
}
