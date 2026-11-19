package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PrimitiveConstructor<KeyT extends Key, PrimitiveT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f34008a;

    /* JADX INFO: renamed from: com.google.crypto.tink.internal.PrimitiveConstructor$1, reason: invalid class name */
    class AnonymousClass1 extends PrimitiveConstructor<Key, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ PrimitiveConstructionFunction f34009b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PrimitiveConstructionFunction primitiveConstructionFunction, Class cls) {
            super(cls);
            this.f34009b = primitiveConstructionFunction;
        }
    }

    public interface PrimitiveConstructionFunction<KeyT extends Key, PrimitiveT> {
        Object d(Key key);
    }

    public PrimitiveConstructor(Class cls) {
        this.f34008a = cls;
    }

    public static PrimitiveConstructor a(PrimitiveConstructionFunction primitiveConstructionFunction, Class cls) {
        return new AnonymousClass1(primitiveConstructionFunction, cls);
    }
}
