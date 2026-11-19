package androidx.security.crypto;

import android.security.keystore.KeyGenParameterSpec;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class MasterKeys {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f19869a;

    static {
        new KeyGenParameterSpec.Builder("_androidx_security_master_key_", 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build();
        f19869a = new Object();
    }
}
