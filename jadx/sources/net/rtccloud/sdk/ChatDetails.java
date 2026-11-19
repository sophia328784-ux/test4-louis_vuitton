package net.rtccloud.sdk;

/* JADX INFO: loaded from: classes4.dex */
public class ChatDetails {
    private String cid;
    private int current;
    private final byte[] metadata;
    private String mid;
    private int nuid;
    private String[] plist;
    private int total;
    private int totalmsg;
    private int ts;
    private int unreadmsg;

    public ChatDetails(int i2, String str, String str2, int i3, int i4, int i5, int i6, int i7, byte[] bArr, String[] strArr) {
        this.ts = i2;
        this.cid = str;
        this.mid = str2;
        this.current = i3;
        this.total = i4;
        this.nuid = i5;
        this.unreadmsg = i6;
        this.totalmsg = i7;
        this.metadata = bArr;
        this.plist = strArr;
    }

    public String getCid() {
        return this.cid;
    }

    public int getCurrent() {
        return this.current;
    }

    public final byte[] getMetadata() {
        return this.metadata;
    }

    public String getMid() {
        return this.mid;
    }

    public int getNuid() {
        return this.nuid;
    }

    public String[] getPlist() {
        return this.plist;
    }

    public int getTotal() {
        return this.total;
    }

    public int getTotalmsg() {
        return this.totalmsg;
    }

    public int getTs() {
        return this.ts;
    }

    public int getUnreadmsg() {
        return this.unreadmsg;
    }
}
