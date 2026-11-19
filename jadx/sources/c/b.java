package c;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class b implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f21000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f21001c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f21003f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f21004h;

    public b() {
        this.f21000b = "";
        this.f21001c = "";
        this.d = "";
        this.f21002e = 0;
        this.f21003f = 0L;
        this.g = 1;
        this.f21004h = 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ListInfoItem [Name=");
        sb.append(this.f21000b);
        sb.append(", Source=");
        sb.append(this.f21001c);
        sb.append(", SearchUrl=");
        sb.append(this.d);
        sb.append(", Quality=");
        sb.append(this.f21002e);
        sb.append(", UpdateTime=");
        sb.append(this.f21003f);
        sb.append(", LastPlayIndex=");
        sb.append(this.g);
        sb.append(", TrackNumber=");
        return defpackage.a.i(this.f21004h, ", GroupName=]", sb);
    }

    public b(String str, String str2, String str3) {
        this.f21002e = 0;
        this.f21003f = 0L;
        this.g = 1;
        this.f21004h = 0;
        this.f21000b = str;
        this.f21001c = str2;
        this.d = str3;
    }

    public b(String str, String str2) {
        this.d = "";
        this.f21002e = 0;
        this.f21003f = 0L;
        this.g = 1;
        this.f21004h = 0;
        this.f21000b = str;
        this.f21001c = str2;
    }
}
