package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import defpackage.b21;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaWildcardType extends ReflectJavaType implements JavaWildcardType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WildcardType f72640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EmptyList f72641c;

    public ReflectJavaWildcardType(WildcardType wildcardType) {
        wildcardType.getClass();
        this.f72640b = wildcardType;
        this.f72641c = EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType
    public final boolean F() {
        Type[] upperBounds = this.f72640b.getUpperBounds();
        upperBounds.getClass();
        return !Intrinsics.c(ArraysKt.x(upperBounds), Object.class);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType
    public final Type H() {
        return this.f72640b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return this.f72641c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType
    public final ReflectJavaType p() {
        WildcardType wildcardType = this.f72640b;
        Type[] upperBounds = wildcardType.getUpperBounds();
        Type[] lowerBounds = wildcardType.getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            b21.p(wildcardType, "Wildcard types with many bounds are not yet supported: ");
            return null;
        }
        int length = lowerBounds.length;
        ReflectJavaType.Factory factory = ReflectJavaType.f72635a;
        if (length == 1) {
            Object objQ = ArraysKt.Q(lowerBounds);
            objQ.getClass();
            factory.getClass();
            return ReflectJavaType.Factory.a((Type) objQ);
        }
        if (upperBounds.length == 1) {
            Type type = (Type) ArraysKt.Q(upperBounds);
            if (!Intrinsics.c(type, Object.class)) {
                type.getClass();
                factory.getClass();
                return ReflectJavaType.Factory.a(type);
            }
        }
        return null;
    }
}
