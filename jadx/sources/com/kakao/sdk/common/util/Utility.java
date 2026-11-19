package com.kakao.sdk.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.util.Base64;
import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.model.SdkIdentifier;
import defpackage.r81;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.Regex;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/common/util/Utility;", "", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class Utility {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f35894a;

        static {
            int[] iArr = new int[KakaoSdk.Type.values().length];
            try {
                iArr[KakaoSdk.Type.RX_KOTLIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f35894a = iArr;
        }
    }

    public static String a(Context context, KakaoSdk.Type type, SdkIdentifier sdkIdentifier) throws NoSuchAlgorithmException {
        String identifiers;
        context.getClass();
        type.getClass();
        int i2 = Build.VERSION.SDK_INT;
        String str = i2 >= 33 ? context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L)).versionName : context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        String str2 = WhenMappings.f35894a[type.ordinal()] == 1 ? "rx-kotlin" : "kotlin";
        Integer numValueOf = Integer.valueOf(i2);
        String language = Locale.getDefault().getLanguage();
        language.getClass();
        Locale locale = Locale.ROOT;
        String lowerCase = language.toLowerCase(locale);
        lowerCase.getClass();
        String country = Locale.getDefault().getCountry();
        country.getClass();
        String upperCase = country.toUpperCase(locale);
        upperCase.getClass();
        String strB = b(context);
        String str3 = Build.MODEL;
        str3.getClass();
        Locale locale2 = Locale.US;
        locale2.getClass();
        String upperCase2 = str3.toUpperCase(locale2);
        upperCase2.getClass();
        String str4 = String.format("%s/%s %s/%s %s/android-%s %s/%s-%s %s/%s %s/%s %s/%s %s/%s", Arrays.copyOf(new Object[]{"sdk", "2.20.6", "sdk_type", str2, "os", numValueOf, "lang", lowerCase, upperCase, "origin", strB, "device", new Regex("\\s").replace(new Regex("[^\\p{ASCII}]").replace(upperCase2, Browse.CAPS_WILDCARD), "-"), "android_pkg", context.getPackageName(), "app_ver", str}, 17));
        return (sdkIdentifier == null || (identifiers = sdkIdentifier.getIdentifiers()) == null) ? str4 : str4.concat(identifiers);
    }

    public static String b(Context context) throws NoSuchAlgorithmException {
        context.getClass();
        Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
        signatureArr.getClass();
        if (signatureArr.length <= 0) {
            r81.b();
            return null;
        }
        Signature signature = signatureArr[0];
        MessageDigest messageDigest = MessageDigest.getInstance("SHA");
        messageDigest.update(signature.toByteArray());
        String strEncodeToString = Base64.encodeToString(messageDigest.digest(), 2);
        strEncodeToString.getClass();
        return strEncodeToString;
    }
}
