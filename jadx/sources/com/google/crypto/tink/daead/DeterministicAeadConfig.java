package com.google.crypto.tink.daead;

import com.google.crypto.tink.Registry;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.proto.RegistryConfig;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DeterministicAeadConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f33962a = 0;

    static {
        new AesSivKeyManager();
        int i2 = RegistryConfig.CONFIG_NAME_FIELD_NUMBER;
        try {
            Registry.h(DeterministicAeadWrapper.f33964b);
            if (TinkFipsUtil.a()) {
                return;
            }
            Registry.f(new AesSivKeyManager(), true);
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }
}
