package com.google.crypto.tink.internal;

import com.google.crypto.tink.PrimitiveWrapper;
import com.google.crypto.tink.mac.ChunkedMac;
import defpackage.no0;
import defpackage.pq0;
import defpackage.r81;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class PrimitiveRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f34011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f34012b;

    public static final class PrimitiveConstructorIndex {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f34015a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f34016b;

        public PrimitiveConstructorIndex(Class cls, Class cls2) {
            this.f34015a = cls;
            this.f34016b = cls2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof PrimitiveConstructorIndex)) {
                return false;
            }
            PrimitiveConstructorIndex primitiveConstructorIndex = (PrimitiveConstructorIndex) obj;
            return primitiveConstructorIndex.f34015a.equals(this.f34015a) && primitiveConstructorIndex.f34016b.equals(this.f34016b);
        }

        public final int hashCode() {
            return Objects.hash(this.f34015a, this.f34016b);
        }

        public final String toString() {
            return this.f34015a.getSimpleName() + " with primitive type: " + this.f34016b.getSimpleName();
        }
    }

    public PrimitiveRegistry(Builder builder) {
        this.f34011a = new HashMap(builder.f34013a);
        this.f34012b = new HashMap(builder.f34014b);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f34013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f34014b;

        public Builder(PrimitiveRegistry primitiveRegistry) {
            this.f34013a = new HashMap(primitiveRegistry.f34011a);
            this.f34014b = new HashMap(primitiveRegistry.f34012b);
        }

        public final void a(PrimitiveConstructor primitiveConstructor) throws GeneralSecurityException {
            if (primitiveConstructor == null) {
                r81.d("primitive constructor must be non-null");
                return;
            }
            PrimitiveConstructorIndex primitiveConstructorIndex = new PrimitiveConstructorIndex(primitiveConstructor.f34008a, ChunkedMac.class);
            HashMap map = this.f34013a;
            if (!map.containsKey(primitiveConstructorIndex)) {
                map.put(primitiveConstructorIndex, primitiveConstructor);
                return;
            }
            PrimitiveConstructor primitiveConstructor2 = (PrimitiveConstructor) map.get(primitiveConstructorIndex);
            if (primitiveConstructor2.equals(primitiveConstructor) && primitiveConstructor.equals(primitiveConstructor2)) {
                return;
            }
            no0.n(primitiveConstructorIndex, "Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ");
        }

        public final void b(PrimitiveWrapper primitiveWrapper) throws GeneralSecurityException {
            if (primitiveWrapper == null) {
                r81.d("wrapper must be non-null");
                return;
            }
            Class clsC = primitiveWrapper.c();
            HashMap map = this.f34014b;
            if (!map.containsKey(clsC)) {
                map.put(clsC, primitiveWrapper);
                return;
            }
            PrimitiveWrapper primitiveWrapper2 = (PrimitiveWrapper) map.get(clsC);
            if (!primitiveWrapper2.equals(primitiveWrapper) || !primitiveWrapper.equals(primitiveWrapper2)) {
                throw new GeneralSecurityException(pq0.m(clsC, "Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type"));
            }
        }

        public Builder() {
            this.f34013a = new HashMap();
            this.f34014b = new HashMap();
        }
    }
}
