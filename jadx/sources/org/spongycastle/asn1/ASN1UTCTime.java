package org.spongycastle.asn1;

import defpackage.az;
import defpackage.n00;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1UTCTime extends ASN1Primitive {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f77726b;

    public ASN1UTCTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f77726b = Strings.b(simpleDateFormat.format(date));
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77726b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1UTCTime) {
            return Arrays.a(this.f77726b, ((ASN1UTCTime) aSN1Primitive).f77726b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.c(23);
        byte[] bArr = this.f77726b;
        int length = bArr.length;
        aSN1OutputStream.f(length);
        for (int i2 = 0; i2 != length; i2++) {
            aSN1OutputStream.c(bArr[i2]);
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int length = this.f77726b.length;
        return StreamUtil.a(length) + 1 + length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final Date r() {
        String string;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmssz");
        String strA = Strings.a(this.f77726b);
        if (strA.indexOf(45) >= 0 || strA.indexOf(43) >= 0) {
            int iIndexOf = strA.indexOf(45);
            if (iIndexOf < 0) {
                iIndexOf = strA.indexOf(43);
            }
            if (iIndexOf == strA.length() - 3) {
                strA = strA.concat("00");
            }
            if (iIndexOf == 10) {
                StringBuilder sb = new StringBuilder();
                n00.A(0, 10, strA, "00GMT", sb);
                n00.A(10, 13, strA, ":", sb);
                sb.append(strA.substring(13, 15));
                string = sb.toString();
            } else {
                StringBuilder sb2 = new StringBuilder();
                n00.A(0, 12, strA, "GMT", sb2);
                n00.A(12, 15, strA, ":", sb2);
                sb2.append(strA.substring(15, 17));
                string = sb2.toString();
            }
        } else {
            string = strA.length() == 11 ? strA.substring(0, 10).concat("00GMT+00:00") : strA.substring(0, 12).concat("GMT+00:00");
        }
        return simpleDateFormat.parse(string);
    }

    public final String toString() {
        return Strings.a(this.f77726b);
    }

    public ASN1UTCTime(String str) {
        this.f77726b = Strings.b(str);
        try {
            r();
        } catch (ParseException e2) {
            az.w(e2.getMessage(), "invalid date string: ");
            throw null;
        }
    }

    public ASN1UTCTime(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f77726b = Strings.b(simpleDateFormat.format(date));
    }
}
