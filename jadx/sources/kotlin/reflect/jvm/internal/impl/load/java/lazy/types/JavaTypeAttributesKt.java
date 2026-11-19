package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.collections.SetsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;

/* JADX INFO: loaded from: classes4.dex */
public abstract class JavaTypeAttributesKt {
    public static JavaTypeAttributes a(TypeUsage typeUsage, boolean z, LazyJavaTypeParameterDescriptor lazyJavaTypeParameterDescriptor, int i2) {
        boolean z2 = (i2 & 1) != 0 ? false : z;
        boolean z3 = (i2 & 2) == 0;
        if ((i2 & 4) != 0) {
            lazyJavaTypeParameterDescriptor = null;
        }
        typeUsage.getClass();
        return new JavaTypeAttributes(typeUsage, null, z3, z2, lazyJavaTypeParameterDescriptor != null ? SetsKt.h(lazyJavaTypeParameterDescriptor) : null, null, 34, null);
    }
}
