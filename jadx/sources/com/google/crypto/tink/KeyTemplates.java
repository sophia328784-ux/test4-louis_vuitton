package com.google.crypto.tink;

import defpackage.tr;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class KeyTemplates {
    public static KeyTemplate a(String str) throws GeneralSecurityException {
        Map mapUnmodifiableMap;
        AtomicReference atomicReference = Registry.f33873a;
        synchronized (Registry.class) {
            mapUnmodifiableMap = Collections.unmodifiableMap(Registry.d);
        }
        KeyTemplate keyTemplate = (KeyTemplate) mapUnmodifiableMap.get(str);
        if (keyTemplate != null) {
            return keyTemplate;
        }
        throw new GeneralSecurityException(tr.g("cannot find key template: ", str));
    }
}
