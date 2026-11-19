package com.linecorp.linesdk.internal.security.encryption;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableEntryException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher;", "Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;", "<init>", "()V", "Companion", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class StringAesCipher implements StringCipher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f36252a = LazyKt.b(StringAesCipher$keyStore$2.f36254c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Mac f36253b;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\u000b"}, d2 = {"Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher$Companion;", "", "", "AES_KEY_ALIAS", "Ljava/lang/String;", "ANDROID_KEY_STORE", "INTEGRITY_KEY_ALIAS", "", "KEY_SIZE_IN_BIT", "I", "TRANSFORMATION_FORMAT", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public static void f(CipherData cipherData, Mac mac) {
        byte[] bArr = cipherData.f36248a;
        byte[] bArr2 = cipherData.f36249b;
        bArr.getClass();
        bArr2.getClass();
        int length = bArr.length;
        int length2 = bArr2.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, length + length2);
        System.arraycopy(bArr2, 0, bArrCopyOf, length, length2);
        byte[] bArrDoFinal = mac.doFinal(bArrCopyOf);
        bArrDoFinal.getClass();
        if (!MessageDigest.isEqual(bArrDoFinal, cipherData.f36250c)) {
            throw new SecurityException("Cipher text has been tampered with.");
        }
    }

    @Override // com.linecorp.linesdk.internal.security.encryption.StringCipher
    public final String a(Context context, String str) {
        String strA;
        context.getClass();
        str.getClass();
        synchronized (this) {
            e(context);
            try {
                SecretKey secretKeyC = c();
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
                cipher.init(1, secretKeyC);
                byte[] bytes = str.getBytes(Charsets.UTF_8);
                bytes.getClass();
                byte[] bArrDoFinal = cipher.doFinal(bytes);
                bArrDoFinal.getClass();
                byte[] iv = cipher.getIV();
                iv.getClass();
                Mac mac = this.f36253b;
                if (mac == null) {
                    Intrinsics.h("hmac");
                    throw null;
                }
                byte[] iv2 = cipher.getIV();
                iv2.getClass();
                int length = bArrDoFinal.length;
                int length2 = iv2.length;
                byte[] bArrCopyOf = Arrays.copyOf(bArrDoFinal, length + length2);
                System.arraycopy(iv2, 0, bArrCopyOf, length, length2);
                byte[] bArrDoFinal2 = mac.doFinal(bArrCopyOf);
                bArrDoFinal2.getClass();
                strA = new CipherData(bArrDoFinal, iv, bArrDoFinal2).a();
            } catch (Exception e2) {
                throw new EncryptionException("Failed to encrypt", e2);
            }
        }
        return strA;
    }

    @Override // com.linecorp.linesdk.internal.security.encryption.StringCipher
    public final String b(Context context, String str) {
        String str2;
        context.getClass();
        str.getClass();
        synchronized (this) {
            try {
                SecretKey secretKeyC = c();
                CipherData.d.getClass();
                CipherData cipherDataA = CipherData.Companion.a(str);
                Mac mac = this.f36253b;
                if (mac == null) {
                    Intrinsics.h("hmac");
                    throw null;
                }
                f(cipherDataA, mac);
                IvParameterSpec ivParameterSpec = new IvParameterSpec(cipherDataA.f36249b);
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
                cipher.init(2, secretKeyC, ivParameterSpec);
                byte[] bArrDoFinal = cipher.doFinal(cipherDataA.f36248a);
                bArrDoFinal.getClass();
                str2 = new String(bArrDoFinal, Charsets.UTF_8);
            } catch (Exception e2) {
                throw new EncryptionException("Failed to decrypt", e2);
            }
        }
        return str2;
    }

    public final SecretKey c() throws NoSuchAlgorithmException, KeyStoreException, NoSuchProviderException, UnrecoverableEntryException, InvalidAlgorithmParameterException {
        Lazy lazy = this.f36252a;
        Object f71699b = lazy.getF71699b();
        f71699b.getClass();
        if (((KeyStore) f71699b).containsAlias("com.linecorp.android.security.encryption.StringAesCipher")) {
            Object f71699b2 = lazy.getF71699b();
            f71699b2.getClass();
            KeyStore.Entry entry = ((KeyStore) f71699b2).getEntry("com.linecorp.android.security.encryption.StringAesCipher", null);
            entry.getClass();
            SecretKey secretKey = ((KeyStore.SecretKeyEntry) entry).getSecretKey();
            secretKey.getClass();
            return secretKey;
        }
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        KeyGenParameterSpec keyGenParameterSpecBuild = new KeyGenParameterSpec.Builder("com.linecorp.android.security.encryption.StringAesCipher", 3).setKeySize(256).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").build();
        keyGenParameterSpecBuild.getClass();
        keyGenerator.init(keyGenParameterSpecBuild);
        SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
        secretKeyGenerateKey.getClass();
        return secretKeyGenerateKey;
    }

    public final SecretKey d() throws NoSuchAlgorithmException, KeyStoreException, NoSuchProviderException, UnrecoverableEntryException, InvalidAlgorithmParameterException {
        Lazy lazy = this.f36252a;
        Object f71699b = lazy.getF71699b();
        f71699b.getClass();
        if (((KeyStore) f71699b).containsAlias("com.linecorp.android.security.encryption.StringAesCipher.INTEGRITY_KEY")) {
            Object f71699b2 = lazy.getF71699b();
            f71699b2.getClass();
            KeyStore.Entry entry = ((KeyStore) f71699b2).getEntry("com.linecorp.android.security.encryption.StringAesCipher.INTEGRITY_KEY", null);
            entry.getClass();
            SecretKey secretKey = ((KeyStore.SecretKeyEntry) entry).getSecretKey();
            secretKey.getClass();
            return secretKey;
        }
        KeyGenerator keyGenerator = KeyGenerator.getInstance("HmacSHA256", "AndroidKeyStore");
        KeyGenParameterSpec keyGenParameterSpecBuild = new KeyGenParameterSpec.Builder("com.linecorp.android.security.encryption.StringAesCipher.INTEGRITY_KEY", 12).build();
        keyGenParameterSpecBuild.getClass();
        keyGenerator.init(keyGenParameterSpecBuild);
        SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
        secretKeyGenerateKey.getClass();
        return secretKeyGenerateKey;
    }

    public final void e(Context context) {
        context.getClass();
        if (this.f36253b != null) {
            return;
        }
        synchronized (this) {
            c();
            SecretKey secretKeyD = d();
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(secretKeyD);
            this.f36253b = mac;
        }
    }
}
