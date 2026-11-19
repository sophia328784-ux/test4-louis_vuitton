package kotlin.reflect.jvm.internal.impl.types;

import defpackage.v40;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeWithEnhancementKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final KotlinType a(KotlinType kotlinType) {
        kotlinType.getClass();
        if (kotlinType instanceof TypeWithEnhancement) {
            return ((TypeWithEnhancement) kotlinType).Z();
        }
        return null;
    }

    public static final UnwrappedType b(UnwrappedType unwrappedType, KotlinType kotlinType) {
        unwrappedType.getClass();
        kotlinType.getClass();
        return c(unwrappedType, a(kotlinType));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final UnwrappedType c(UnwrappedType unwrappedType, KotlinType kotlinType) {
        unwrappedType.getClass();
        if (unwrappedType instanceof TypeWithEnhancement) {
            return c(((TypeWithEnhancement) unwrappedType).B0(), kotlinType);
        }
        if (kotlinType == null || kotlinType.equals(unwrappedType)) {
            return unwrappedType;
        }
        if (unwrappedType instanceof SimpleType) {
            return new SimpleTypeWithEnhancement((SimpleType) unwrappedType, kotlinType);
        }
        if (unwrappedType instanceof FlexibleType) {
            return new FlexibleTypeWithEnhancement((FlexibleType) unwrappedType, kotlinType);
        }
        v40.g();
        return null;
    }
}
