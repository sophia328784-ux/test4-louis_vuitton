package kotlin.reflect.jvm.internal.impl.types;

import defpackage.mt;
import defpackage.v40;
import java.util.Arrays;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.FilteredAnnotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeSubstitutionKt {
    public static final SimpleType a(KotlinType kotlinType) {
        kotlinType.getClass();
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        SimpleType simpleType = unwrappedTypeK0 instanceof SimpleType ? (SimpleType) unwrappedTypeK0 : null;
        if (simpleType != null) {
            return simpleType;
        }
        mt.f(kotlinType, "This is should be simple type: ");
        return null;
    }

    public static final SimpleType b(SimpleType simpleType, List list, TypeAttributes typeAttributes) {
        simpleType.getClass();
        list.getClass();
        typeAttributes.getClass();
        if (list.isEmpty() && typeAttributes == simpleType.G0()) {
            return simpleType;
        }
        if (list.isEmpty()) {
            return simpleType.N0(typeAttributes);
        }
        if (!(simpleType instanceof ErrorType)) {
            return KotlinTypeFactory.d(typeAttributes, simpleType.H0(), list, simpleType.I0(), null);
        }
        ErrorType errorType = (ErrorType) simpleType;
        TypeConstructor typeConstructor = errorType.f74303c;
        MemberScope memberScope = errorType.d;
        ErrorTypeKind errorTypeKind = errorType.f74304e;
        boolean z = errorType.g;
        String[] strArr = errorType.f74306h;
        return new ErrorType(typeConstructor, memberScope, errorTypeKind, list, z, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static KotlinType c(KotlinType kotlinType, List list, Annotations annotations, int i2) {
        if ((i2 & 2) != 0) {
            annotations = kotlinType.getAnnotations();
        }
        if ((list.isEmpty() || list == kotlinType.F0()) && annotations == kotlinType.getAnnotations()) {
            return kotlinType;
        }
        TypeAttributes typeAttributesG0 = kotlinType.G0();
        if ((annotations instanceof FilteredAnnotations) && ((FilteredAnnotations) annotations).isEmpty()) {
            annotations = Annotations.Companion.f72432a;
        }
        TypeAttributes typeAttributesA = TypeAttributesKt.a(typeAttributesG0, annotations);
        UnwrappedType unwrappedTypeK0 = kotlinType.K0();
        if (unwrappedTypeK0 instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrappedTypeK0;
            return KotlinTypeFactory.a(b(flexibleType.f74193c, list, typeAttributesA), b(flexibleType.d, list, typeAttributesA));
        }
        if (unwrappedTypeK0 instanceof SimpleType) {
            return b((SimpleType) unwrappedTypeK0, list, typeAttributesA);
        }
        v40.g();
        return null;
    }

    public static /* synthetic */ SimpleType d(SimpleType simpleType, List list, TypeAttributes typeAttributes, int i2) {
        if ((i2 & 1) != 0) {
            list = simpleType.F0();
        }
        if ((i2 & 2) != 0) {
            typeAttributes = simpleType.G0();
        }
        return b(simpleType, list, typeAttributes);
    }
}
