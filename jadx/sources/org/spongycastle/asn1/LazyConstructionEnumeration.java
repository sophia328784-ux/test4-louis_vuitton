package org.spongycastle.asn1;

import defpackage.o60;
import java.io.IOException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
class LazyConstructionEnumeration implements Enumeration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ASN1InputStream f77770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ASN1Primitive f77771b = a();

    public LazyConstructionEnumeration(byte[] bArr) {
        this.f77770a = new ASN1InputStream(bArr, true);
    }

    public final ASN1Primitive a() {
        try {
            return this.f77770a.j();
        } catch (IOException e2) {
            throw new ASN1ParsingException(o60.m("malformed DER construction: ", e2), e2);
        }
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.f77771b != null;
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        ASN1Primitive aSN1Primitive = this.f77771b;
        this.f77771b = a();
        return aSN1Primitive;
    }
}
