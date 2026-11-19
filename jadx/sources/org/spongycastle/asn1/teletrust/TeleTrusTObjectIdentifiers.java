package org.spongycastle.asn1.teletrust;

import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public interface TeleTrusTObjectIdentifiers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77815c;
    public static final ASN1ObjectIdentifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77816e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77817f;
    public static final ASN1ObjectIdentifier g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77818h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77819i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77820j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77821k;
    public static final ASN1ObjectIdentifier l;
    public static final ASN1ObjectIdentifier m;
    public static final ASN1ObjectIdentifier n;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.3.36.3");
        aSN1ObjectIdentifier.r("2.1");
        aSN1ObjectIdentifier.r("2.2");
        aSN1ObjectIdentifier.r("2.3");
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = new ASN1ObjectIdentifier("3.1", aSN1ObjectIdentifier);
        aSN1ObjectIdentifier2.r(ContentTree.AUDIO_ID);
        aSN1ObjectIdentifier2.r(ContentTree.IMAGE_ID);
        aSN1ObjectIdentifier2.r("4");
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = new ASN1ObjectIdentifier("3.2", aSN1ObjectIdentifier);
        aSN1ObjectIdentifier3.r("1");
        aSN1ObjectIdentifier3.r(ContentTree.AUDIO_ID);
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = new ASN1ObjectIdentifier("1", new ASN1ObjectIdentifier("1", new ASN1ObjectIdentifier("3.2.8", aSN1ObjectIdentifier)));
        f77813a = new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier4);
        f77814b = new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier4);
        f77815c = new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier4);
        d = new ASN1ObjectIdentifier("4", aSN1ObjectIdentifier4);
        f77816e = new ASN1ObjectIdentifier("5", aSN1ObjectIdentifier4);
        f77817f = new ASN1ObjectIdentifier("6", aSN1ObjectIdentifier4);
        g = new ASN1ObjectIdentifier("7", aSN1ObjectIdentifier4);
        f77818h = new ASN1ObjectIdentifier("8", aSN1ObjectIdentifier4);
        f77819i = new ASN1ObjectIdentifier(DbParams.GZIP_DATA_ENCRYPT, aSN1ObjectIdentifier4);
        f77820j = new ASN1ObjectIdentifier("10", aSN1ObjectIdentifier4);
        f77821k = new ASN1ObjectIdentifier("11", aSN1ObjectIdentifier4);
        l = new ASN1ObjectIdentifier("12", aSN1ObjectIdentifier4);
        m = new ASN1ObjectIdentifier(DbParams.GZIP_TRANSPORT_ENCRYPT, aSN1ObjectIdentifier4);
        n = new ASN1ObjectIdentifier("14", aSN1ObjectIdentifier4);
    }
}
