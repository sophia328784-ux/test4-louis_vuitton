package org.spongycastle.asn1.nist;

import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.n00;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public interface NISTObjectIdentifiers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77792c;
    public static final ASN1ObjectIdentifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77793e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77794f;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("2.16.840.1.101.3.4");
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier);
        f77790a = new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier2);
        f77791b = new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier2);
        f77792c = new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier2);
        d = new ASN1ObjectIdentifier("4", aSN1ObjectIdentifier2);
        n00.D(aSN1ObjectIdentifier2, "5", "6", "7", "8");
        aSN1ObjectIdentifier2.r(DbParams.GZIP_DATA_ENCRYPT);
        aSN1ObjectIdentifier2.r("10");
        f77793e = new ASN1ObjectIdentifier("11", aSN1ObjectIdentifier2);
        f77794f = new ASN1ObjectIdentifier("12", aSN1ObjectIdentifier2);
        aSN1ObjectIdentifier2.r(DbParams.GZIP_TRANSPORT_ENCRYPT);
        aSN1ObjectIdentifier2.r("14");
        aSN1ObjectIdentifier2.r("15");
        aSN1ObjectIdentifier2.r("16");
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier);
        aSN1ObjectIdentifier3.r("1");
        aSN1ObjectIdentifier3.r(ContentTree.AUDIO_ID);
        aSN1ObjectIdentifier3.r(ContentTree.IMAGE_ID);
        n00.D(aSN1ObjectIdentifier3, "4", "5", "6", "7");
        n00.D(aSN1ObjectIdentifier3, "8", "21", "22", "23");
        n00.D(aSN1ObjectIdentifier3, "24", "25", "26", "27");
        n00.D(aSN1ObjectIdentifier3, "28", "41", "42", "43");
        n00.D(aSN1ObjectIdentifier3, "44", "45", "46", "47");
        aSN1ObjectIdentifier3.r("48");
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier);
        aSN1ObjectIdentifier4.r("1");
        n00.D(aSN1ObjectIdentifier4, ContentTree.AUDIO_ID, ContentTree.IMAGE_ID, "4", "5");
        n00.D(aSN1ObjectIdentifier4, "6", "7", "8", DbParams.GZIP_DATA_ENCRYPT);
        n00.D(aSN1ObjectIdentifier4, "10", "11", "12", DbParams.GZIP_TRANSPORT_ENCRYPT);
        aSN1ObjectIdentifier4.r("14");
        aSN1ObjectIdentifier4.r("15");
        aSN1ObjectIdentifier4.r("16");
    }
}
