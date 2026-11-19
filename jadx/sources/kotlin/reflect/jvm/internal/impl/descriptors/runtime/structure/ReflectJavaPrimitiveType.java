package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Type;
import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectJavaPrimitiveType extends ReflectJavaType implements JavaPrimitiveType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f72632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EmptyList f72633c;

    public ReflectJavaPrimitiveType(Class<?> cls) {
        cls.getClass();
        this.f72632b = cls;
        this.f72633c = EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType
    public final Type H() {
        return this.f72632b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return this.f72633c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPrimitiveType
    public final PrimitiveType getType() {
        Class cls = Void.TYPE;
        Class cls2 = this.f72632b;
        if (Intrinsics.c(cls2, cls)) {
            return null;
        }
        return JvmPrimitiveType.b(cls2.getName()).f();
    }
}
