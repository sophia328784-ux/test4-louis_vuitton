package com.networkbench.agent.impl.h;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    public static String[] a() throws Exception {
        SecureRandom secureRandom = new SecureRandom();
        ECGenParameterSpec eCGenParameterSpec = new ECGenParameterSpec("sm2p256v1");
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC", new BouncyCastleProvider());
        keyPairGenerator.initialize(eCGenParameterSpec);
        keyPairGenerator.initialize(eCGenParameterSpec, secureRandom);
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        return new String[]{new String(a.a(keyPairGenerateKeyPair.getPublic().getEncoded())), new String(a.a(keyPairGenerateKeyPair.getPrivate().getEncoded()))};
    }

    public static PrivateKey b(String str) {
        try {
            return KeyFactory.getInstance("EC", new BouncyCastleProvider()).generatePrivate(new PKCS8EncodedKeySpec(a.a(str)));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static PublicKey a(String str) {
        try {
            return KeyFactory.getInstance("EC", new BouncyCastleProvider()).generatePublic(new X509EncodedKeySpec(a.a(str)));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static PublicKey a(byte[] bArr) {
        try {
            return KeyFactory.getInstance("EC", new BouncyCastleProvider()).generatePublic(new X509EncodedKeySpec(bArr));
        } catch (Throwable unused) {
            return null;
        }
    }
}
