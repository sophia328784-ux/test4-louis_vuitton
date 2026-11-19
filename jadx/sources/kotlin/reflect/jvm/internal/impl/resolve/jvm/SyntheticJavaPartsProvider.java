package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.ArrayList;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public interface SyntheticJavaPartsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f73900a = Companion.f73901a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f73901a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final CompositeSyntheticJavaPartsProvider f73902b = new CompositeSyntheticJavaPartsProvider(EmptyList.f71768b);
    }

    void a(ClassDescriptor classDescriptor, Name name, ListBuilder listBuilder, LazyJavaResolverContext lazyJavaResolverContext);

    ArrayList b(ClassDescriptor classDescriptor, LazyJavaResolverContext lazyJavaResolverContext);

    ArrayList c(ClassDescriptor classDescriptor, LazyJavaResolverContext lazyJavaResolverContext);

    void d(ClassDescriptor classDescriptor, Name name, ArrayList arrayList, LazyJavaResolverContext lazyJavaResolverContext);

    void e(ClassDescriptor classDescriptor, Name name, ArrayList arrayList, LazyJavaResolverContext lazyJavaResolverContext);

    PropertyDescriptorImpl f(ClassDescriptor classDescriptor, PropertyDescriptorImpl propertyDescriptorImpl, LazyJavaResolverContext lazyJavaResolverContext);

    ArrayList g(ClassDescriptor classDescriptor, LazyJavaResolverContext lazyJavaResolverContext);

    void h(ClassDescriptor classDescriptor, ArrayList arrayList, LazyJavaResolverContext lazyJavaResolverContext);
}
