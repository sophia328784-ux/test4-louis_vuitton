package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class DERNull extends ASN1Null {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DERNull f77751b = new DERNull();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f77752c = new byte[0];

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(5, f77752c);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        return 2;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }
}
