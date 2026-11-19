package com.networkbench.agent.impl.util;

import defpackage.md;
import defpackage.n00;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38373a = "AES/CBC/PKCS5Padding";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38374b = "AES";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f38375c = com.networkbench.agent.impl.c.f.a();
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PublicKey f38376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f38377f;

    public g(String str) throws Exception {
        this.d = str;
        c();
    }

    public static String a(boolean z, int i2) {
        String string;
        String str = z ? "1234567890" : "1234567890abcdefghijkmnpqrstuvwxyz";
        int length = str.length();
        boolean z2 = true;
        do {
            string = "";
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int iFloor = (int) Math.floor(Math.random() * ((double) length));
                char cCharAt = str.charAt(iFloor);
                if ('0' <= cCharAt && cCharAt <= '9') {
                    i3++;
                }
                StringBuilder sbT = n00.t(string);
                sbT.append(str.charAt(iFloor));
                string = sbT.toString();
            }
            if (i3 >= 2) {
                z2 = false;
            }
        } while (z2);
        return string;
    }

    public static String b(String str, String str2) {
        if (str == null) {
            md.n("encrypt aes content is null");
            return null;
        }
        com.networkbench.agent.impl.c.e eVar = f38375c;
        eVar.a("ResoureData encryptResourceAEStoHexString:".concat(str));
        try {
            String strD = d(str2);
            SecretKeySpec secretKeySpec = new SecretKeySpec(strD.getBytes("utf-8"), f38374b);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(strD.getBytes("utf-8"));
            Cipher cipher = Cipher.getInstance(f38373a);
            cipher.init(1, secretKeySpec, ivParameterSpec);
            String strB = ak.b(cipher.doFinal(str.getBytes("utf-8")));
            eVar.a("encryptResourceAES key : " + strB);
            return strB;
        } catch (Throwable th) {
            f38375c.a("encryptContentAES error", th);
            return "";
        }
    }

    public static String d(String str) {
        if (ak.r(str)) {
            return "";
        }
        String strE = e(str);
        return strE.length() >= 24 ? strE.substring(8, 24) : strE;
    }

    public static String e(String str) {
        return new StringBuilder(str).reverse().toString();
    }

    public String c(String str) throws Exception {
        if (str == null) {
            md.n("encrypt aes content is null");
            return null;
        }
        f38375c.a("generateAESKey aes content:".concat(str));
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, c());
            return p.a(cipher.doFinal(str.getBytes("utf-8")));
        } catch (Throwable th) {
            f38375c.a("encryptContentRsa error:", th);
            throw new d(th);
        }
    }

    public PublicKey c() throws Exception {
        if (this.f38376e == null) {
            this.f38376e = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(p.a(this.d)));
        }
        return this.f38376e;
    }

    public String a(String str) throws d {
        if (str != null) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(b(), f38374b);
                IvParameterSpec ivParameterSpec = new IvParameterSpec(b());
                Cipher cipher = Cipher.getInstance(f38373a);
                cipher.init(1, secretKeySpec, ivParameterSpec);
                return p.a(cipher.doFinal(str.getBytes("utf-8")));
            } catch (Throwable th) {
                f38375c.a("encryptContentAES error", th);
                throw new d(th);
            }
        }
        md.n("encrypt aes content is null");
        return null;
    }

    public String a() {
        return this.d;
    }

    public String a(String str, String str2) throws d {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("utf-8"), f38374b);
            Cipher cipher = Cipher.getInstance(f38373a);
            cipher.init(2, secretKeySpec, new IvParameterSpec(b()));
            return new String(cipher.doFinal(p.a(str)));
        } catch (Throwable th) {
            f38375c.a("decryptContentAES error", th);
            throw new d(th);
        }
    }

    public String b(String str) throws d {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(b(), f38374b);
            Cipher cipher = Cipher.getInstance(f38373a);
            cipher.init(2, secretKeySpec, new IvParameterSpec(b()));
            return new String(cipher.doFinal(p.a(str)));
        } catch (Throwable th) {
            f38375c.a("decryptContentAES error", th);
            throw new d(th);
        }
    }

    public byte[] b() throws Exception {
        byte[] bArr = this.f38377f;
        if (bArr != null) {
            return bArr;
        }
        byte[] bytes = a(false, 16).getBytes();
        this.f38377f = bytes;
        return bytes;
    }
}
