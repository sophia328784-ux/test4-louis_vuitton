package com.google.crypto.tink.integration.android;

import android.security.keystore.KeyGenParameterSpec;
import com.google.crypto.tink.KmsClient;
import com.google.crypto.tink.subtle.Random;
import com.google.crypto.tink.subtle.Validators;
import defpackage.bm;
import defpackage.md;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.Arrays;
import java.util.Locale;
import javax.crypto.KeyGenerator;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidKeystoreKmsClient implements KmsClient {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f33976c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public KeyStore f33978b;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f33979a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final KeyStore f33980b;

        public Builder() {
            this.f33980b = null;
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f33980b = keyStore;
                keyStore.load(null);
            } catch (IOException | GeneralSecurityException e2) {
                bm.i(e2);
                throw null;
            }
        }
    }

    @Deprecated
    public AndroidKeystoreKmsClient(String str) {
        Builder builder = new Builder();
        if (str == null || !str.toLowerCase(Locale.US).startsWith("android-keystore://")) {
            md.n("val must start with android-keystore://");
            throw null;
        }
        builder.f33979a = str;
        this(builder);
    }

    public static boolean c(String str) {
        AndroidKeystoreKmsClient androidKeystoreKmsClient = new AndroidKeystoreKmsClient();
        synchronized (f33976c) {
            try {
                if (androidKeystoreKmsClient.e(str)) {
                    return false;
                }
                d(str);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void d(String str) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        String strB = Validators.b(str);
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        keyGenerator.init(new KeyGenParameterSpec.Builder(strB, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
        keyGenerator.generateKey();
    }

    @Override // com.google.crypto.tink.KmsClient
    public final synchronized boolean a(String str) {
        String str2 = this.f33977a;
        if (str2 == null || !str2.equals(str)) {
            return this.f33977a == null && str.toLowerCase(Locale.US).startsWith("android-keystore://");
        }
        return true;
    }

    @Override // com.google.crypto.tink.KmsClient
    public final synchronized AndroidKeystoreAesGcm b(String str) {
        AndroidKeystoreAesGcm androidKeystoreAesGcm;
        try {
            String str2 = this.f33977a;
            if (str2 != null && !str2.equals(str)) {
                throw new GeneralSecurityException("this client is bound to " + this.f33977a + ", cannot load keys bound to " + str);
            }
            androidKeystoreAesGcm = new AndroidKeystoreAesGcm(Validators.b(str), this.f33978b);
            byte[] bArrA = Random.a(10);
            byte[] bArr = new byte[0];
            if (!Arrays.equals(bArrA, androidKeystoreAesGcm.decrypt(androidKeystoreAesGcm.a(bArrA, bArr), bArr))) {
                throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
            }
        } catch (Throwable th) {
            throw th;
        }
        return androidKeystoreAesGcm;
    }

    public final synchronized boolean e(String str) {
        String strB;
        strB = Validators.b(str);
        try {
            try {
            } catch (NullPointerException unused) {
                try {
                    Thread.sleep((int) (Math.random() * 40.0d));
                } catch (InterruptedException unused2) {
                }
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f33978b = keyStore;
                keyStore.load(null);
                return this.f33978b.containsAlias(strB);
            }
        } catch (IOException e2) {
            throw new GeneralSecurityException(e2);
        }
        return this.f33978b.containsAlias(strB);
    }

    public AndroidKeystoreKmsClient() throws GeneralSecurityException {
        this(new Builder());
    }

    public AndroidKeystoreKmsClient(Builder builder) {
        this.f33977a = builder.f33979a;
        this.f33978b = builder.f33980b;
    }
}
