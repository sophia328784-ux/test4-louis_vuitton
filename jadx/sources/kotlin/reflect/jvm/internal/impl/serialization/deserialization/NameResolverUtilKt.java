package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NameResolverUtilKt {
    public static final ClassId a(NameResolver nameResolver, int i2) {
        nameResolver.getClass();
        ClassId.Companion companion = ClassId.d;
        String strB = nameResolver.b(i2);
        boolean zA = nameResolver.a(i2);
        companion.getClass();
        return ClassId.Companion.a(strB, zA);
    }

    public static final Name b(NameResolver nameResolver, int i2) {
        nameResolver.getClass();
        return Name.d(nameResolver.getString(i2));
    }
}
