package e;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68710c;
    public final String d;

    public a(String str, String str2, String str3, String str4) {
        this.f68708a = str;
        this.f68709b = str2;
        this.f68710c = str3;
        this.d = str4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f68708a);
        sb.append("@");
        sb.append(this.f68709b);
        sb.append("@");
        String str = this.f68710c;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public a(String str, String str2, String str3) {
        this.f68708a = str;
        this.f68709b = str2;
        this.f68710c = str3;
    }

    public a(String str, String str2) {
        this.f68708a = str;
        this.f68709b = str2;
    }
}
