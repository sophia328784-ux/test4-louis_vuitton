package com.batch.android.e;

import android.util.Base64;
import java.security.Key;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23177a = "WebserviceSignature";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23178b = "UJYLuqVx7jwx/9hIJP0U/+PwG8rZjPfC9q0WTpGGfoo=";

    public static String a(String str) {
        try {
            return b.c(Base64.encode(a(new SecretKeySpec(a(), "HmacSHA256"), b.a(str)), 0));
        } catch (Exception e2) {
            t.a(f23177a, "Error while encrypting HmacSHA256 bytes", e2);
            return null;
        }
    }

    private static byte[] a() {
        return b.a(Base64.decode("QiExXW9PdC8=", 0), d.a(d.b.EAS_BASE64).b(f23178b));
    }

    private static byte[] a(Key key, byte[] bArr) throws Exception {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(key);
        return mac.doFinal(bArr);
    }
}
