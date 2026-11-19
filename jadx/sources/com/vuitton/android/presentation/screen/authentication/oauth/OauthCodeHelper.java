package com.vuitton.android.presentation.screen.authentication.oauth;

import defpackage.az;
import defpackage.md;
import defpackage.o60;
import defpackage.pq0;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.io.encoding.Base64;
import kotlin.io.encoding.Base64Kt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;", "", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OauthCodeHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f53710a = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(byte[] bArr) {
            int i2;
            bArr.getClass();
            Base64.INSTANCE.getClass();
            Base64 base64 = Base64.f71891h;
            int length = bArr.length;
            base64.getClass();
            Base64.PaddingOption paddingOption = base64.d;
            int length2 = bArr.length;
            AbstractList.Companion companion = AbstractList.INSTANCE;
            companion.getClass();
            AbstractList.Companion.a(0, length, length2);
            int iA = base64.a(length);
            byte[] bArr2 = new byte[iA];
            int length3 = bArr.length;
            companion.getClass();
            AbstractList.Companion.a(0, length, length3);
            int iA2 = base64.a(length);
            if (iA < 0) {
                az.v(pq0.k(iA, "destination offset: 0, destination size: "));
                return null;
            }
            if (iA2 < 0 || iA2 > iA) {
                az.v(o60.h(iA, iA2, "The destination array does not have enough capacity, destination offset: 0, destination size: ", ", capacity needed: "));
                return null;
            }
            byte[] bArr3 = base64.f71892a ? Base64Kt.f71898c : Base64Kt.f71896a;
            int i3 = base64.f71893b ? base64.f71895e : Integer.MAX_VALUE;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i2 = i4 + 2;
                if (i2 >= length) {
                    break;
                }
                int iMin = Math.min((length - i4) / 3, i3);
                for (int i6 = 0; i6 < iMin; i6++) {
                    int i7 = bArr[i4] & 255;
                    int i8 = i4 + 2;
                    int i9 = bArr[i4 + 1] & 255;
                    i4 += 3;
                    int i10 = (i9 << 8) | (i7 << 16) | (bArr[i8] & 255);
                    bArr2[i5] = bArr3[i10 >>> 18];
                    bArr2[i5 + 1] = bArr3[(i10 >>> 12) & 63];
                    int i11 = i5 + 3;
                    bArr2[i5 + 2] = bArr3[(i10 >>> 6) & 63];
                    i5 += 4;
                    bArr2[i11] = bArr3[i10 & 63];
                }
                if (iMin == i3 && i4 != length) {
                    int i12 = i5 + 1;
                    byte[] bArr4 = Base64.g;
                    bArr2[i5] = bArr4[0];
                    i5 += 2;
                    bArr2[i12] = bArr4[1];
                }
            }
            int i13 = length - i4;
            if (i13 == 1) {
                int i14 = i4 + 1;
                int i15 = (bArr[i4] & 255) << 4;
                bArr2[i5] = bArr3[i15 >>> 6];
                int i16 = i5 + 2;
                bArr2[i5 + 1] = bArr3[i15 & 63];
                if (paddingOption == Base64.PaddingOption.PRESENT || paddingOption == Base64.PaddingOption.PRESENT_OPTIONAL) {
                    bArr2[i16] = 61;
                    bArr2[i5 + 3] = 61;
                }
                i4 = i14;
            } else if (i13 == 2) {
                int i17 = ((bArr[i4 + 1] & 255) << 2) | ((bArr[i4] & 255) << 10);
                bArr2[i5] = bArr3[i17 >>> 12];
                int i18 = i5 + 2;
                bArr2[i5 + 1] = bArr3[(i17 >>> 6) & 63];
                int i19 = i5 + 3;
                bArr2[i18] = bArr3[i17 & 63];
                if (paddingOption == Base64.PaddingOption.PRESENT || paddingOption == Base64.PaddingOption.PRESENT_OPTIONAL) {
                    bArr2[i19] = 61;
                }
                i4 = i2;
            }
            if (i4 == length) {
                return StringsKt.J(new String(bArr2, Charsets.d), "=", "");
            }
            md.k("Check failed.");
            return null;
        }
    }

    @Inject
    public OauthCodeHelper() {
    }

    public static String a(String str) throws NoSuchAlgorithmException {
        str.getClass();
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        Charset charset = StandardCharsets.UTF_8;
        charset.getClass();
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        byte[] bArrDigest = messageDigest.digest(bytes);
        bArrDigest.getClass();
        f53710a.getClass();
        return Companion.a(bArrDigest);
    }
}
