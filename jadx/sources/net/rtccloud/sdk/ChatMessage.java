package net.rtccloud.sdk;

/* JADX INFO: loaded from: classes4.dex */
public class ChatMessage {
    private String cid;
    private int current;
    private int from;
    private String message;
    private int total;
    private int ts;

    public ChatMessage(int i2, int i3, String str, int i4, int i5, String str2) {
        this.ts = i2;
        this.from = i3;
        this.cid = str;
        this.current = i4;
        this.total = i5;
        this.message = str2;
    }

    public String getCid() {
        return this.cid;
    }

    public int getCurrent() {
        return this.current;
    }

    public int getFrom() {
        return this.from;
    }

    public String getMessage() {
        return this.message;
    }

    public int getTotal() {
        return this.total;
    }

    public int getTs() {
        return this.ts;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setCurrent(int i2) {
        this.current = i2;
    }

    public void setFrom(int i2) {
        this.from = i2;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setTotal(int i2) {
        this.total = i2;
    }

    public void setTs(int i2) {
        this.ts = i2;
    }
}
