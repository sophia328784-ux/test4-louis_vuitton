package org.spongycastle.asn1.bc;

import com.linkplay.medialib.ContentTree;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public interface BCObjectIdentifiers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f77783c;
    public static final ASN1ObjectIdentifier d;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.3.6.1.4.1.22554");
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier);
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier2);
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = new ASN1ObjectIdentifier("2.1", aSN1ObjectIdentifier2);
        aSN1ObjectIdentifier2.r("2.2");
        aSN1ObjectIdentifier2.r("2.3");
        aSN1ObjectIdentifier2.r("2.4");
        aSN1ObjectIdentifier3.r("1");
        ASN1ObjectIdentifier aSN1ObjectIdentifier5 = new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier3);
        aSN1ObjectIdentifier4.r("1");
        ASN1ObjectIdentifier aSN1ObjectIdentifier6 = new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier4);
        aSN1ObjectIdentifier5.r("1.2");
        aSN1ObjectIdentifier5.r("1.22");
        aSN1ObjectIdentifier5.r("1.42");
        aSN1ObjectIdentifier6.r("1.2");
        aSN1ObjectIdentifier6.r("1.22");
        aSN1ObjectIdentifier6.r("1.42");
        ASN1ObjectIdentifier aSN1ObjectIdentifier7 = new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier);
        ASN1ObjectIdentifier aSN1ObjectIdentifier8 = new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier7);
        f77781a = aSN1ObjectIdentifier8;
        new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier8);
        new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier8);
        new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier8);
        ASN1ObjectIdentifier aSN1ObjectIdentifier9 = new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier7);
        f77782b = aSN1ObjectIdentifier9;
        new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier9);
        new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier9);
        new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier9);
        new ASN1ObjectIdentifier("4", aSN1ObjectIdentifier9);
        ASN1ObjectIdentifier aSN1ObjectIdentifier10 = new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier7);
        f77783c = aSN1ObjectIdentifier10;
        new ASN1ObjectIdentifier("1", aSN1ObjectIdentifier10);
        new ASN1ObjectIdentifier(ContentTree.AUDIO_ID, aSN1ObjectIdentifier10);
        new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier10);
        new ASN1ObjectIdentifier("4", aSN1ObjectIdentifier10);
        d = new ASN1ObjectIdentifier("1", new ASN1ObjectIdentifier(ContentTree.IMAGE_ID, aSN1ObjectIdentifier));
    }
}
