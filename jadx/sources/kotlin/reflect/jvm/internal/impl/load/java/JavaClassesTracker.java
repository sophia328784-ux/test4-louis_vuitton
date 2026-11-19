package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public interface JavaClassesTracker {

    public static final class Default implements JavaClassesTracker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Default f72837a = new Default();

        @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaClassesTracker
        public final void a(LazyJavaClassDescriptor lazyJavaClassDescriptor) {
        }
    }

    void a(LazyJavaClassDescriptor lazyJavaClassDescriptor);
}
