package com.vuitton.android.presentation.screen.authentication.accountmanager;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Base64;
import kotlin.Metadata;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NonceUtilsKt {
    public static final String a() {
        byte[] bArr = new byte[20];
        SecureRandom.getInstanceStrong().nextBytes(bArr);
        String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(bArr);
        strEncodeToString.getClass();
        return strEncodeToString;
    }

    public static final String b(String str) throws NoSuchAlgorithmException {
        str.getClass();
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        String strEncodeToString = Base64.getEncoder().encodeToString(messageDigest.digest(bytes));
        strEncodeToString.getClass();
        return strEncodeToString;
    }
}
