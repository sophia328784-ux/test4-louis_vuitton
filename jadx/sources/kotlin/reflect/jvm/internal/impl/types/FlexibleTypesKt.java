package kotlin.reflect.jvm.internal.impl.types;

import defpackage.v40;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FlexibleTypesKt {
    public static final SimpleType a(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        if (unwrappedTypeK0 instanceof FlexibleType) {
            return ((FlexibleType) unwrappedTypeK0).f74193c;
        }
        if (unwrappedTypeK0 instanceof SimpleType) {
            return (SimpleType) unwrappedTypeK0;
        }
        v40.g();
        return null;
    }

    public static final SimpleType b(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        if (unwrappedTypeK0 instanceof FlexibleType) {
            return ((FlexibleType) unwrappedTypeK0).d;
        }
        if (unwrappedTypeK0 instanceof SimpleType) {
            return (SimpleType) unwrappedTypeK0;
        }
        v40.g();
        return null;
    }
}
