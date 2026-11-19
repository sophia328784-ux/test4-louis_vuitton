package com.linecorp.linesdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.linecorp.linesdk.internal.security.encryption.EncryptionException;
import com.linecorp.linesdk.internal.security.encryption.StringCipher;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public class AccessTokenCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f36166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringCipher f36168c;

    public AccessTokenCache(Context context, String str, StringCipher stringCipher) {
        this.f36166a = context;
        this.f36167b = tr.g("com.linecorp.linesdk.accesstoken.", str);
        this.f36168c = stringCipher;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003c  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d A[Catch: EncryptionException -> 0x0077, TRY_LEAVE, TryCatch #1 {EncryptionException -> 0x0077, blocks: (B:3:0x0009, B:8:0x001b, B:15:0x0034, B:18:0x003d, B:19:0x0041, B:11:0x0026, B:12:0x002a, B:7:0x0016), top: B:46:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0051  */
    public final InternalAccessToken a() {
        long jLongValue;
        String string;
        long jLongValue2;
        Context context = this.f36166a;
        String str = this.f36167b;
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        try {
            String string2 = sharedPreferences.getString("accessToken", null);
            StringCipher stringCipher = this.f36168c;
            String strB = string2 == null ? null : stringCipher.b(context, string2);
            String string3 = sharedPreferences.getString("expiresIn", null);
            if (string3 != null) {
                try {
                    jLongValue = Long.valueOf(stringCipher.b(context, string3)).longValue();
                } catch (NumberFormatException unused) {
                    jLongValue = -1;
                }
                string = sharedPreferences.getString("issuedClientTime", null);
                if (string == null) {
                    try {
                        jLongValue2 = Long.valueOf(stringCipher.b(context, string)).longValue();
                    } catch (NumberFormatException unused2) {
                        jLongValue2 = -1;
                    }
                    if (!TextUtils.isEmpty(strB) || jLongValue == -1 || jLongValue2 == -1) {
                        return null;
                    }
                    String string4 = sharedPreferences.getString("refreshToken", null);
                    String strB2 = string4 != null ? stringCipher.b(context, string4) : null;
                    if (strB2 == null) {
                        strB2 = "";
                    }
                    return new InternalAccessToken(strB, jLongValue, jLongValue2, strB2);
                }
                jLongValue2 = -1;
                if (TextUtils.isEmpty(strB)) {
                }
                return null;
            }
            jLongValue = -1;
            string = sharedPreferences.getString("issuedClientTime", null);
            if (string == null) {
                jLongValue2 = Long.valueOf(stringCipher.b(context, string)).longValue();
                if (TextUtils.isEmpty(strB)) {
                }
                return null;
            }
            jLongValue2 = -1;
            if (TextUtils.isEmpty(strB)) {
            }
            return null;
        } catch (EncryptionException e2) {
            context.getSharedPreferences(str, 0).edit().clear().apply();
            throw e2;
        }
    }

    public final void b(InternalAccessToken internalAccessToken) {
        String str = this.f36167b;
        Context context = this.f36166a;
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        String str2 = internalAccessToken.f36176a;
        StringCipher stringCipher = this.f36168c;
        editorEdit.putString("accessToken", stringCipher.a(context, str2)).putString("expiresIn", stringCipher.a(context, String.valueOf(internalAccessToken.f36177b))).putString("issuedClientTime", stringCipher.a(context, String.valueOf(internalAccessToken.f36178c))).putString("refreshToken", stringCipher.a(context, internalAccessToken.d)).apply();
    }

    public AccessTokenCache(Context context, String str) {
        this(context.getApplicationContext(), str, EncryptorHolder.f36172a);
    }
}
