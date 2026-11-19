package kotlin.reflect.jvm.internal;

import defpackage.d20;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.types.AbstractKType;

/* JADX INFO: loaded from: classes4.dex */
class ConvertFromMetadataKt$$Lambda$3 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f72004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f72005c;

    public ConvertFromMetadataKt$$Lambda$3(Function0 function0, int i2) {
        this.f72004b = function0;
        this.f72005c = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        final AbstractKType abstractKType = (AbstractKType) this.f72004b.mo47invoke();
        Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0(abstractKType) { // from class: kotlin.reflect.jvm.internal.ConvertFromMetadataKt$$Lambda$5

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AbstractKType f72007b;

            {
                this.f72007b = abstractKType;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Type typeJ = this.f72007b.j();
                typeJ.getClass();
                return ReflectClassUtilKt.c(typeJ);
            }
        });
        Type typeJ = abstractKType.j();
        if (typeJ instanceof Class) {
            Class cls = (Class) typeJ;
            Class<?> componentType = cls.isArray() ? cls.getComponentType() : Object.class;
            componentType.getClass();
            return componentType;
        }
        boolean z = typeJ instanceof GenericArrayType;
        int i2 = this.f72005c;
        if (z) {
            if (i2 != 0) {
                d20.c(abstractKType, "Array type has been queried for a non-0th argument: ");
                return null;
            }
            Type genericComponentType = ((GenericArrayType) typeJ).getGenericComponentType();
            genericComponentType.getClass();
            return genericComponentType;
        }
        if (!(typeJ instanceof ParameterizedType)) {
            d20.c(abstractKType, "Non-generic type has been queried for arguments: ");
            return null;
        }
        Type type = (Type) ((List) lazyA.getF71699b()).get(i2);
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] lowerBounds = wildcardType.getLowerBounds();
        lowerBounds.getClass();
        Type type2 = (Type) ArraysKt.x(lowerBounds);
        if (type2 == null) {
            Type[] upperBounds = wildcardType.getUpperBounds();
            upperBounds.getClass();
            type2 = (Type) ArraysKt.w(upperBounds);
        }
        type2.getClass();
        return type2;
    }
}
