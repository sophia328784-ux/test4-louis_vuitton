package org.spongycastle.asn1.gm;

import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public interface GMObjectIdentifiers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77787b;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.2.156.10197.1");
        aSN1ObjectIdentifier.r("101.1");
        aSN1ObjectIdentifier.r("101.2");
        aSN1ObjectIdentifier.r("101.3");
        aSN1ObjectIdentifier.r("101.4");
        n00.D(aSN1ObjectIdentifier, "102.1", "102.2", "102.3", "102.4");
        n00.D(aSN1ObjectIdentifier, "102.5", "102.6", "103.1", "103.2");
        n00.D(aSN1ObjectIdentifier, "103.3", "103.4", "103.5", "103.6");
        n00.D(aSN1ObjectIdentifier, "104.1", "104.2", "104.3", "104.4");
        n00.D(aSN1ObjectIdentifier, "104.5", "104.6", "104.7", "104.8");
        n00.D(aSN1ObjectIdentifier, "104.9", "104.10", "104.11", "104.12");
        aSN1ObjectIdentifier.r("104.100");
        aSN1ObjectIdentifier.r("201");
        f77786a = new ASN1ObjectIdentifier("301", aSN1ObjectIdentifier);
        aSN1ObjectIdentifier.r("301.1");
        aSN1ObjectIdentifier.r("301.2");
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = new ASN1ObjectIdentifier("301.3", aSN1ObjectIdentifier);
        f77787b = new ASN1ObjectIdentifier("301.101", aSN1ObjectIdentifier);
        n00.D(aSN1ObjectIdentifier2, "1", ContentTree.AUDIO_ID, "2.1", "2.2");
        n00.D(aSN1ObjectIdentifier2, "2.3", "2.4", "2.5", "2.6");
        n00.D(aSN1ObjectIdentifier2, "2.7", "2.8", "2.9", "2.10");
        aSN1ObjectIdentifier2.r("2.11");
        aSN1ObjectIdentifier.r("302");
        aSN1ObjectIdentifier.r("302.1");
        aSN1ObjectIdentifier.r("302.2");
        aSN1ObjectIdentifier.r("302.3");
        new ASN1ObjectIdentifier("401", aSN1ObjectIdentifier).r(ContentTree.AUDIO_ID);
        aSN1ObjectIdentifier.r("501");
        aSN1ObjectIdentifier.r("502");
        n00.D(aSN1ObjectIdentifier, "503", "504", "505", "506");
        n00.D(aSN1ObjectIdentifier, "507", "520", "521", "522");
    }
}
