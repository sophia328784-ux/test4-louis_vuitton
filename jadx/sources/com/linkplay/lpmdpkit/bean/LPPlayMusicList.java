package com.linkplay.lpmdpkit.bean;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPPlayMusicList implements Serializable {
    private static final String TAG = "LPPlayMusicList";
    LPAccount account;
    LPPlayHeader header;
    int index;
    List<LPPlayItem> list;

    public LPPlayMusicList(int i2) {
        this.index = i2;
    }

    public LPAccount getAccount() {
        return this.account;
    }

    public LPPlayHeader getHeader() {
        return this.header;
    }

    public int getIndex() {
        return this.index;
    }

    public List<LPPlayItem> getList() {
        return this.list;
    }

    public void setAccount(LPAccount lPAccount) {
        this.account = lPAccount;
    }

    public void setHeader(LPPlayHeader lPPlayHeader) {
        this.header = lPPlayHeader;
    }

    public void setIndex(int i2) {
        this.index = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setList(List<? extends LPPlayItem> list) {
        try {
            this.list = list;
        } catch (Exception e2) {
            e2.printStackTrace();
            e2.getMessage();
        }
    }

    public LPPlayMusicList() {
    }
}
