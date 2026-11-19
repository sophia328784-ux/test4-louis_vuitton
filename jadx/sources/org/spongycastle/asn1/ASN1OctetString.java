package org.spongycastle.asn1;

import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import defpackage.r81;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;
import org.spongycastle.util.encoders.HexEncoder;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1OctetString extends ASN1Primitive implements ASN1OctetStringParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77714b;

    public ASN1OctetString(byte[] bArr) {
        if (bArr != null) {
            this.f77714b = bArr;
        } else {
            r81.d("string cannot be null");
            throw null;
        }
    }

    public static ASN1OctetString r(Object obj) {
        if (obj == null || (obj instanceof ASN1OctetString)) {
            return (ASN1OctetString) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return r(ASN1Primitive.n((byte[]) obj));
            } catch (IOException e2) {
                md.n(n00.o(e2, new StringBuilder("failed to construct OCTET STRING from byte[]: ")));
                return null;
            }
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1OctetString) {
                return (ASN1OctetString) aSN1Primitive;
            }
        }
        md.n(o60.l(obj, "illegal object in getInstance: "));
        return null;
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return this;
    }

    @Override // org.spongycastle.asn1.ASN1OctetStringParser
    public final InputStream getOctetStream() {
        return new ByteArrayInputStream(this.f77714b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(s());
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1OctetString) {
            return Arrays.a(this.f77714b, ((ASN1OctetString) aSN1Primitive).f77714b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive p() {
        return new DEROctetString(this.f77714b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive q() {
        return new DEROctetString(this.f77714b);
    }

    public byte[] s() {
        return this.f77714b;
    }

    public final String toString() {
        HexEncoder hexEncoder = Hex.f78271a;
        byte[] bArr = this.f77714b;
        return "#".concat(Strings.a(Hex.b(bArr.length, bArr)));
    }
}
