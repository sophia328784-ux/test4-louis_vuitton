package org.spongycastle.asn1;

/* JADX INFO: loaded from: classes5.dex */
public class OIDTokenizer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f77775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f77776b = 0;

    public OIDTokenizer(String str) {
        this.f77775a = str;
    }

    public final String a() {
        int i2 = this.f77776b;
        if (i2 == -1) {
            return null;
        }
        String str = this.f77775a;
        int iIndexOf = str.indexOf(46, i2);
        if (iIndexOf == -1) {
            String strSubstring = str.substring(this.f77776b);
            this.f77776b = -1;
            return strSubstring;
        }
        String strSubstring2 = str.substring(this.f77776b, iIndexOf);
        this.f77776b = iIndexOf + 1;
        return strSubstring2;
    }
}
