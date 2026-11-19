package org.spongycastle.asn1.sec;

import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.n00;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;

/* JADX INFO: loaded from: classes5.dex */
public interface SECObjectIdentifiers {
    public static final ASN1ObjectIdentifier A;
    public static final ASN1ObjectIdentifier B;
    public static final ASN1ObjectIdentifier C;
    public static final ASN1ObjectIdentifier D;
    public static final ASN1ObjectIdentifier E;
    public static final ASN1ObjectIdentifier F;
    public static final ASN1ObjectIdentifier G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77803c;
    public static final ASN1ObjectIdentifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77805f;
    public static final ASN1ObjectIdentifier g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77806h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77807i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77808j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77809k;
    public static final ASN1ObjectIdentifier l;
    public static final ASN1ObjectIdentifier m;
    public static final ASN1ObjectIdentifier n;
    public static final ASN1ObjectIdentifier o;
    public static final ASN1ObjectIdentifier p;
    public static final ASN1ObjectIdentifier q;
    public static final ASN1ObjectIdentifier r;
    public static final ASN1ObjectIdentifier s;
    public static final ASN1ObjectIdentifier t;
    public static final ASN1ObjectIdentifier u;
    public static final ASN1ObjectIdentifier v;
    public static final ASN1ObjectIdentifier w;
    public static final ASN1ObjectIdentifier x;
    public static final ASN1ObjectIdentifier y;
    public static final ASN1ObjectIdentifier z;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.3.132.0");
        f77801a = new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier);
        f77802b = new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier);
        f77803c = new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier);
        d = new ASN1ObjectIdentifier("4", aSN1ObjectIdentifier);
        f77804e = new ASN1ObjectIdentifier("5", aSN1ObjectIdentifier);
        f77805f = new ASN1ObjectIdentifier("6", aSN1ObjectIdentifier);
        g = new ASN1ObjectIdentifier("7", aSN1ObjectIdentifier);
        f77806h = new ASN1ObjectIdentifier("8", aSN1ObjectIdentifier);
        f77807i = new ASN1ObjectIdentifier(DbParams.GZIP_DATA_ENCRYPT, aSN1ObjectIdentifier);
        f77808j = new ASN1ObjectIdentifier("10", aSN1ObjectIdentifier);
        f77809k = new ASN1ObjectIdentifier("15", aSN1ObjectIdentifier);
        l = new ASN1ObjectIdentifier("16", aSN1ObjectIdentifier);
        m = new ASN1ObjectIdentifier("17", aSN1ObjectIdentifier);
        n = new ASN1ObjectIdentifier("22", aSN1ObjectIdentifier);
        o = new ASN1ObjectIdentifier("23", aSN1ObjectIdentifier);
        p = new ASN1ObjectIdentifier("24", aSN1ObjectIdentifier);
        q = new ASN1ObjectIdentifier("25", aSN1ObjectIdentifier);
        r = new ASN1ObjectIdentifier("26", aSN1ObjectIdentifier);
        s = new ASN1ObjectIdentifier("27", aSN1ObjectIdentifier);
        t = new ASN1ObjectIdentifier("28", aSN1ObjectIdentifier);
        u = new ASN1ObjectIdentifier("29", aSN1ObjectIdentifier);
        v = new ASN1ObjectIdentifier("30", aSN1ObjectIdentifier);
        w = new ASN1ObjectIdentifier("31", aSN1ObjectIdentifier);
        x = new ASN1ObjectIdentifier("32", aSN1ObjectIdentifier);
        y = new ASN1ObjectIdentifier("33", aSN1ObjectIdentifier);
        z = new ASN1ObjectIdentifier("34", aSN1ObjectIdentifier);
        A = new ASN1ObjectIdentifier("35", aSN1ObjectIdentifier);
        B = new ASN1ObjectIdentifier("36", aSN1ObjectIdentifier);
        C = new ASN1ObjectIdentifier("37", aSN1ObjectIdentifier);
        D = new ASN1ObjectIdentifier("38", aSN1ObjectIdentifier);
        E = new ASN1ObjectIdentifier("39", aSN1ObjectIdentifier);
        F = X9ObjectIdentifiers.U0;
        G = X9ObjectIdentifiers.a1;
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = new ASN1ObjectIdentifier("1.3.132.1");
        aSN1ObjectIdentifier2.r("11.0");
        aSN1ObjectIdentifier2.r("11.1");
        aSN1ObjectIdentifier2.r("11.2");
        aSN1ObjectIdentifier2.r("11.3");
        n00.D(aSN1ObjectIdentifier2, "14.0", "14.1", "14.2", "14.3");
        n00.D(aSN1ObjectIdentifier2, "15.0", "15.1", "15.2", "15.3");
        n00.D(aSN1ObjectIdentifier2, "16.0", "16.1", "16.2", "16.3");
    }
}
