package com.networkbench.agent.impl.util.a;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.SM4Engine;
import org.bouncycastle.crypto.macs.CBCBlockCipherMac;
import org.bouncycastle.crypto.macs.GMac;
import org.bouncycastle.crypto.modes.GCMBlockCipher;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;
import org.bouncycastle.crypto.paddings.PKCS7Padding;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes5.dex */
public class h extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f38293a = "SM4";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f38294b = "SM4/ECB/PKCS5Padding";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f38295c = "SM4/ECB/NoPadding";
    public static final String d = "SM4/CBC/PKCS5Padding";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f38296e = "SM4/CBC/NoPadding";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f38297f = 128;

    public static byte[] a(byte[] bArr, byte[] bArr2, BlockCipherPadding blockCipherPadding, byte[] bArr3) throws Exception {
        SM4Engine sM4Engine = new SM4Engine();
        if (blockCipherPadding != null || bArr3.length % sM4Engine.getBlockSize() == 0) {
            return a(new CBCBlockCipherMac(sM4Engine, sM4Engine.getBlockSize() * 8, blockCipherPadding), bArr, bArr2, bArr3);
        }
        throw new Exception("if no padding, data length must be multiple of SM4 BlockSize");
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        return a(f38295c, 1, bArr).doFinal(bArr2);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        return a(f38295c, 2, bArr).doFinal(bArr2);
    }

    public static byte[] d(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        return a("SM4-CMAC", new SecretKeySpec(bArr, "SM4"), bArr2);
    }

    public static byte[] e(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        SM4Engine sM4Engine = new SM4Engine();
        return a(new CBCBlockCipherMac(sM4Engine, sM4Engine.getBlockSize() * 8, new PKCS7Padding()), bArr, bArr2, bArr3);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, InvalidAlgorithmParameterException {
        return a(d, 2, bArr, bArr2).doFinal(bArr3);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, InvalidAlgorithmParameterException {
        return a(f38296e, 1, bArr, bArr2).doFinal(bArr3);
    }

    public static byte[] d(byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, InvalidAlgorithmParameterException {
        return a(f38296e, 2, bArr, bArr2).doFinal(bArr3);
    }

    private static byte[] e(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        return a("SM4/ECB/PKCS5Padding", 1, bArr).doFinal(bArr2);
    }

    public static byte[] a(int i2) throws NoSuchAlgorithmException, NoSuchProviderException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("SM4", new BouncyCastleProvider());
        keyGenerator.init(i2, new SecureRandom());
        return keyGenerator.generateKey().getEncoded();
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        return a("SM4/ECB/PKCS5Padding", 2, bArr).doFinal(bArr2);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, InvalidAlgorithmParameterException {
        return a(d, 1, bArr, bArr2).doFinal(bArr3);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, int i2, byte[] bArr3) {
        return a(new GMac(new GCMBlockCipher(new SM4Engine()), i2 * 8), bArr, bArr2, bArr3);
    }

    public static byte[] a() throws NoSuchAlgorithmException, NoSuchProviderException {
        return a(128);
    }

    private static byte[] a(Mac mac, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        mac.init(new ParametersWithIV(new KeyParameter(bArr), bArr2));
        mac.update(bArr3, 0, bArr3.length);
        byte[] bArr4 = new byte[mac.getMacSize()];
        mac.doFinal(bArr4, 0);
        return bArr4;
    }

    private static byte[] a(String str, Key key, byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        javax.crypto.Mac mac = javax.crypto.Mac.getInstance(str, new BouncyCastleProvider());
        mac.init(key);
        mac.update(bArr);
        return mac.doFinal();
    }

    public static Cipher a(String str, int i2, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        Cipher cipher = Cipher.getInstance(str, new BouncyCastleProvider());
        cipher.init(i2, new SecretKeySpec(bArr, "SM4"));
        return cipher;
    }

    private static Cipher a(String str, int i2, byte[] bArr, byte[] bArr2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance(str, new BouncyCastleProvider());
        cipher.init(i2, new SecretKeySpec(bArr, "SM4"), new IvParameterSpec(bArr2));
        return cipher;
    }
}
