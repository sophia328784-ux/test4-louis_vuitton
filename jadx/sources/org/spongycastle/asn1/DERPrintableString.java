package org.spongycastle.asn1;

import defpackage.md;
import java.io.IOException;
import org.bouncycastle.asn1.eac.EACTags;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class DERPrintableString extends ASN1Primitive implements ASN1String {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77755b;

    public DERPrintableString(String str, boolean z) {
        if (z) {
            for (int length = str.length() - 1; length >= 0; length--) {
                char cCharAt = str.charAt(length);
                if (cCharAt <= 127) {
                    if (('a' > cCharAt || cCharAt > 'z') && (('A' > cCharAt || cCharAt > 'Z') && (('0' > cCharAt || cCharAt > '9') && cCharAt != ' ' && cCharAt != ':' && cCharAt != '=' && cCharAt != '?'))) {
                        switch (cCharAt) {
                            case '\'':
                            case '(':
                            case ')':
                                continue;
                            default:
                                switch (cCharAt) {
                                    case EACTags.DATE_OF_BIRTH /* 43 */:
                                    case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                                    case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                                    case '.':
                                    case EACTags.PIN_USAGE_POLICY /* 47 */:
                                        break;
                                    default:
                                        break;
                                }
                                break;
                        }
                    }
                }
                md.n("string contains illegal characters");
                throw null;
            }
        }
        this.f77755b = Strings.b(str);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77755b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof DERPrintableString) {
            return Arrays.a(this.f77755b, ((DERPrintableString) aSN1Primitive).f77755b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(19, this.f77755b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77755b;
        return StreamUtil.a(bArr.length) + 1 + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return Strings.a(this.f77755b);
    }

    public DERPrintableString(byte[] bArr) {
        this.f77755b = bArr;
    }

    public DERPrintableString(String str) {
        this(str, false);
    }
}
