package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import defpackage.bm;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class MutablePrimitiveRegistry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MutablePrimitiveRegistry f34000b = new MutablePrimitiveRegistry();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f34001a = new AtomicReference(new PrimitiveRegistry(new PrimitiveRegistry.Builder()));

    public final Object a(Key key, Class cls) throws GeneralSecurityException {
        PrimitiveRegistry primitiveRegistry = (PrimitiveRegistry) this.f34001a.get();
        primitiveRegistry.getClass();
        PrimitiveRegistry.PrimitiveConstructorIndex primitiveConstructorIndex = new PrimitiveRegistry.PrimitiveConstructorIndex(key.getClass(), cls);
        HashMap map = primitiveRegistry.f34011a;
        if (map.containsKey(primitiveConstructorIndex)) {
            return ((PrimitiveConstructor.AnonymousClass1) ((PrimitiveConstructor) map.get(primitiveConstructorIndex))).f34009b.d(key);
        }
        bm.f("No PrimitiveConstructor for ", primitiveConstructorIndex, " available");
        return null;
    }

    public final synchronized void b(PrimitiveConstructor primitiveConstructor) {
        PrimitiveRegistry.Builder builder = new PrimitiveRegistry.Builder((PrimitiveRegistry) this.f34001a.get());
        builder.a(primitiveConstructor);
        this.f34001a.set(new PrimitiveRegistry(builder));
    }
}
