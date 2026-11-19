package com.google.android.gms.internal.p000authapi;

import android.util.Base64;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zbat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SecureRandom f29594a = new SecureRandom();

    public static String a() {
        byte[] bArr = new byte[16];
        f29594a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
