package com.vuitton.android.data.di.sharedpreferences;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import androidx.security.crypto.EncryptedSharedPreferences;
import androidx.security.crypto.MasterKey$Builder;
import androidx.security.crypto.MasterKey$KeyScheme;
import androidx.security.crypto.MasterKeys;
import com.google.crypto.tink.Aead;
import com.google.crypto.tink.DeterministicAead;
import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.Registry;
import com.google.crypto.tink.aead.AeadConfig;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.daead.AesSivKeyManager;
import com.google.crypto.tink.daead.DeterministicAeadConfig;
import com.google.crypto.tink.daead.DeterministicAeadWrapper;
import com.google.crypto.tink.integration.android.AndroidKeysetManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.az;
import defpackage.b21;
import defpackage.md;
import defpackage.r81;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.ProviderException;
import java.util.Arrays;
import javax.crypto.KeyGenerator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/data/di/sharedpreferences/SharedPreferencesFactory;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SharedPreferencesFactory {
    public static EncryptedSharedPreferences a(Context context, String str) {
        KeysetHandle keysetHandleC;
        KeysetHandle keysetHandleC2;
        context.getClass();
        MasterKey$Builder masterKey$Builder = new MasterKey$Builder(context);
        MasterKey$KeyScheme masterKey$KeyScheme = MasterKey$KeyScheme.AES256_GCM;
        masterKey$Builder.a(masterKey$KeyScheme);
        MasterKey$KeyScheme masterKey$KeyScheme2 = masterKey$Builder.f19868c;
        if (masterKey$KeyScheme2 == null && masterKey$Builder.f19867b == null) {
            md.n("build() called before setKeyGenParameterSpec or setKeyScheme.");
            return null;
        }
        if (masterKey$KeyScheme2 == masterKey$KeyScheme) {
            masterKey$Builder.f19867b = new KeyGenParameterSpec.Builder(masterKey$Builder.f19866a, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build();
        }
        KeyGenParameterSpec keyGenParameterSpec = masterKey$Builder.f19867b;
        if (keyGenParameterSpec == null) {
            r81.d("KeyGenParameterSpec was null after build() check");
            return null;
        }
        Object obj = MasterKeys.f19869a;
        if (keyGenParameterSpec.getKeySize() != 256) {
            b21.r("invalid key size, want 256 bits got ", keyGenParameterSpec.getKeySize(), " bits");
            return null;
        }
        if (!Arrays.equals(keyGenParameterSpec.getBlockModes(), new String[]{"GCM"})) {
            az.w(Arrays.toString(keyGenParameterSpec.getBlockModes()), "invalid block mode, want GCM got ");
            return null;
        }
        if (keyGenParameterSpec.getPurposes() != 3) {
            md.g(keyGenParameterSpec.getPurposes(), "invalid purposes mode, want PURPOSE_ENCRYPT | PURPOSE_DECRYPT got ");
            return null;
        }
        if (!Arrays.equals(keyGenParameterSpec.getEncryptionPaddings(), new String[]{"NoPadding"})) {
            az.w(Arrays.toString(keyGenParameterSpec.getEncryptionPaddings()), "invalid padding mode, want NoPadding got ");
            return null;
        }
        if (keyGenParameterSpec.isUserAuthenticationRequired() && keyGenParameterSpec.getUserAuthenticationValidityDurationSeconds() < 1) {
            md.n("per-operation authentication is not supported (UserAuthenticationValidityDurationSeconds must be >0)");
            return null;
        }
        synchronized (MasterKeys.f19869a) {
            String keystoreAlias = keyGenParameterSpec.getKeystoreAlias();
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (!keyStore.containsAlias(keystoreAlias)) {
                try {
                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                    keyGenerator.init(keyGenParameterSpec);
                    keyGenerator.generateKey();
                } catch (ProviderException e2) {
                    throw new GeneralSecurityException(e2.getMessage(), e2);
                }
            }
        }
        String keystoreAlias2 = keyGenParameterSpec.getKeystoreAlias();
        EncryptedSharedPreferences.PrefKeyEncryptionScheme prefKeyEncryptionScheme = EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV;
        EncryptedSharedPreferences.PrefValueEncryptionScheme prefValueEncryptionScheme = EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM;
        prefKeyEncryptionScheme.getClass();
        prefValueEncryptionScheme.getClass();
        int i2 = DeterministicAeadConfig.f33962a;
        Registry.h(DeterministicAeadWrapper.f33964b);
        if (!TinkFipsUtil.a()) {
            Registry.f(new AesSivKeyManager(), true);
        }
        AeadConfig.a();
        Context applicationContext = context.getApplicationContext();
        AndroidKeysetManager.Builder builder = new AndroidKeysetManager.Builder();
        builder.f33974f = prefKeyEncryptionScheme.a();
        if (applicationContext == null) {
            md.n("need an Android context");
            return null;
        }
        builder.f33970a = applicationContext;
        builder.f33971b = "__androidx_security_crypto_encrypted_prefs_key_keyset__";
        builder.f33972c = str;
        builder.c("android-keystore://" + keystoreAlias2);
        AndroidKeysetManager androidKeysetManagerA = builder.a();
        synchronized (androidKeysetManagerA) {
            keysetHandleC = androidKeysetManagerA.f33969a.c();
        }
        AndroidKeysetManager.Builder builder2 = new AndroidKeysetManager.Builder();
        builder2.f33974f = prefValueEncryptionScheme.a();
        builder2.f33970a = applicationContext;
        builder2.f33971b = "__androidx_security_crypto_encrypted_prefs_value_keyset__";
        builder2.f33972c = str;
        builder2.c("android-keystore://" + keystoreAlias2);
        AndroidKeysetManager androidKeysetManagerA2 = builder2.a();
        synchronized (androidKeysetManagerA2) {
            keysetHandleC2 = androidKeysetManagerA2.f33969a.c();
        }
        return new EncryptedSharedPreferences(str, applicationContext.getSharedPreferences(str, 0), (Aead) keysetHandleC2.c(Aead.class), (DeterministicAead) keysetHandleC.c(DeterministicAead.class));
    }
}
