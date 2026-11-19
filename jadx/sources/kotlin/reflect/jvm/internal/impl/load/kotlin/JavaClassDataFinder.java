package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaClassDataFinder implements ClassDataFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KotlinClassFinder f73240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DeserializedDescriptorResolver f73241b;

    public JavaClassDataFinder(KotlinClassFinder kotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver) {
        kotlinClassFinder.getClass();
        deserializedDescriptorResolver.getClass();
        this.f73240a = kotlinClassFinder;
        this.f73241b = deserializedDescriptorResolver;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder
    public final ClassData a(ClassId classId) {
        classId.getClass();
        DeserializedDescriptorResolver deserializedDescriptorResolver = this.f73241b;
        KotlinJvmBinaryClass kotlinJvmBinaryClassA = KotlinClassFinderKt.a(this.f73240a, classId, deserializedDescriptorResolver.c().f73990c.a());
        if (kotlinJvmBinaryClassA == null) {
            return null;
        }
        kotlinJvmBinaryClassA.d().equals(classId);
        return deserializedDescriptorResolver.f(kotlinJvmBinaryClassA);
    }
}
