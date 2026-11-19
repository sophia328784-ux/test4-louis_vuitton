package androidx.core.provider;

import android.util.Base64;
import androidx.core.util.Preconditions;
import defpackage.tr;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FontRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f12093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f12094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12095c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12096e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f12097f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f12098h;

    public FontRequest(String str, String str2, String str3, int i2) {
        str.getClass();
        this.f12093a = str;
        str2.getClass();
        this.f12094b = str2;
        str3.getClass();
        this.f12095c = str3;
        this.d = null;
        Preconditions.a(i2 != 0);
        this.f12096e = i2;
        this.f12097f = null;
        this.g = null;
        this.f12098h = a(str, str2, str3, null, null);
    }

    public static String a(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("-");
        sb.append(str2);
        sb.append("-");
        sb.append(str3);
        return tr.l(sb, "-", str4, "-", str5);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f12093a + ", mProviderPackage: " + this.f12094b + ", mQuery: " + this.f12095c + ", mSystemFont: " + this.f12097f + ", mVariationSettings: " + this.g + ", mCertificates:");
        int i2 = 0;
        while (true) {
            List list = this.d;
            if (i2 >= list.size()) {
                sb.append("}");
                sb.append("mCertificatesArray: " + this.f12096e);
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i2);
            for (int i3 = 0; i3 < list2.size(); i3++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i3), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i2++;
        }
    }

    public FontRequest(String str, String str2, String str3, List<List<byte[]>> list, String str4, String str5) {
        str.getClass();
        this.f12093a = str;
        str2.getClass();
        this.f12094b = str2;
        str3.getClass();
        this.f12095c = str3;
        list.getClass();
        this.d = list;
        this.f12096e = 0;
        this.f12097f = str4;
        this.g = str5;
        this.f12098h = a(str, str2, str3, str4, str5);
    }

    public FontRequest(String str, String str2, String str3, List<List<byte[]>> list) {
        this(str, str2, str3, list, null, null);
    }
}
