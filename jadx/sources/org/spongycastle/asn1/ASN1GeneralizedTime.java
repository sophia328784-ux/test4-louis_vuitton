package org.spongycastle.asn1;

import com.github.druk.dnssd.DNSSD;
import com.linkplay.medialib.ContentTree;
import defpackage.az;
import defpackage.n00;
import defpackage.pq0;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1GeneralizedTime extends ASN1Primitive {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f77706b;

    public ASN1GeneralizedTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f77706b = Strings.b(simpleDateFormat.format(date));
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77706b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1GeneralizedTime) {
            return Arrays.a(this.f77706b, ((ASN1GeneralizedTime) aSN1Primitive).f77706b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(24, this.f77706b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int length = this.f77706b.length;
        return StreamUtil.a(length) + 1 + length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final Date r() {
        String string;
        String str;
        SimpleDateFormat simpleDateFormat;
        char cCharAt;
        byte[] bArr = this.f77706b;
        String strA = Strings.a(bArr);
        if (strA.endsWith("Z")) {
            simpleDateFormat = s() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'") : new SimpleDateFormat("yyyyMMddHHmmss'Z'");
            simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        } else if (strA.indexOf(45) > 0 || strA.indexOf(43) > 0) {
            String strA2 = Strings.a(bArr);
            if (strA2.charAt(strA2.length() - 1) == 'Z') {
                string = strA2.substring(0, strA2.length() - 1).concat("GMT+00:00");
            } else {
                int length = strA2.length();
                int i2 = length - 5;
                char cCharAt2 = strA2.charAt(i2);
                if (cCharAt2 == '-' || cCharAt2 == '+') {
                    StringBuilder sb = new StringBuilder();
                    sb.append(strA2.substring(0, i2));
                    sb.append("GMT");
                    int i3 = length - 2;
                    n00.A(i2, i3, strA2, ":", sb);
                    sb.append(strA2.substring(i3));
                    string = sb.toString();
                } else {
                    int length2 = strA2.length() - 3;
                    char cCharAt3 = strA2.charAt(length2);
                    if (cCharAt3 == '-' || cCharAt3 == '+') {
                        StringBuilder sb2 = new StringBuilder();
                        n00.A(0, length2, strA2, "GMT", sb2);
                        sb2.append(strA2.substring(length2));
                        sb2.append(":00");
                        string = sb2.toString();
                    } else {
                        TimeZone timeZone = TimeZone.getDefault();
                        int rawOffset = timeZone.getRawOffset();
                        if (rawOffset < 0) {
                            rawOffset = -rawOffset;
                            str = "-";
                        } else {
                            str = "+";
                        }
                        int i4 = rawOffset / 3600000;
                        int i5 = (rawOffset - (3600000 * i4)) / DNSSD.DNSSD_DEFAULT_TIMEOUT;
                        try {
                            if (timeZone.useDaylightTime() && timeZone.inDaylightTime(r())) {
                                i4 += str.equals("+") ? 1 : -1;
                            }
                        } catch (ParseException unused) {
                        }
                        StringBuilder sb3 = new StringBuilder("GMT");
                        sb3.append(str);
                        sb3.append(i4 < 10 ? pq0.k(i4, ContentTree.ROOT_ID) : Integer.toString(i4));
                        sb3.append(":");
                        sb3.append(i5 < 10 ? pq0.k(i5, ContentTree.ROOT_ID) : Integer.toString(i5));
                        string = strA2.concat(sb3.toString());
                    }
                }
            }
            strA = string;
            simpleDateFormat = s() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : new SimpleDateFormat("yyyyMMddHHmmssz");
            simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        } else {
            simpleDateFormat = s() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : new SimpleDateFormat("yyyyMMddHHmmss");
            simpleDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
        }
        if (s()) {
            String strSubstring = strA.substring(14);
            int i6 = 1;
            while (i6 < strSubstring.length() && '0' <= (cCharAt = strSubstring.charAt(i6)) && cCharAt <= '9') {
                i6++;
            }
            int i7 = i6 - 1;
            if (i7 > 3) {
                strA = strA.substring(0, 14).concat(strSubstring.substring(0, 4).concat(strSubstring.substring(i6)));
            } else if (i7 == 1) {
                StringBuilder sb4 = new StringBuilder();
                n00.A(0, i6, strSubstring, "00", sb4);
                sb4.append(strSubstring.substring(i6));
                strA = strA.substring(0, 14).concat(sb4.toString());
            } else if (i7 == 2) {
                StringBuilder sb5 = new StringBuilder();
                n00.A(0, i6, strSubstring, ContentTree.ROOT_ID, sb5);
                sb5.append(strSubstring.substring(i6));
                strA = strA.substring(0, 14).concat(sb5.toString());
            }
        }
        return simpleDateFormat.parse(strA);
    }

    public final boolean s() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f77706b;
            if (i2 == bArr.length) {
                return false;
            }
            if (bArr[i2] == 46 && i2 == 14) {
                return true;
            }
            i2++;
        }
    }

    public ASN1GeneralizedTime(String str) {
        this.f77706b = Strings.b(str);
        try {
            r();
        } catch (ParseException e2) {
            az.w(e2.getMessage(), "invalid date string: ");
            throw null;
        }
    }

    public ASN1GeneralizedTime(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.f77706b = Strings.b(simpleDateFormat.format(date));
    }
}
