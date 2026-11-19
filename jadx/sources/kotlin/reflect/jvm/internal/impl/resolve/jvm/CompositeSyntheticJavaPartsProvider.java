package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public final class CompositeSyntheticJavaPartsProvider implements SyntheticJavaPartsProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f73896b;

    public CompositeSyntheticJavaPartsProvider(List<? extends SyntheticJavaPartsProvider> list) {
        list.getClass();
        this.f73896b = list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public final void a(ClassDescriptor classDescriptor, Name name, ListBuilder listBuilder, LazyJavaResolverContext lazyJavaResolverContext) {
        classDescriptor.getClass();
        name.getClass();
        lazyJavaResolverContext.getClass();
        Iterator it = this.f73896b.iterator();
        while (it.hasNext()) {
            ((SyntheticJavaPartsProvider) it.next()).a(classDescriptor, name, listBuilder, lazyJavaResolverContext);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public final ArrayList b(ClassDescriptor classDescriptor, LazyJavaResolverContext lazyJavaResolverContext) {
        classDescriptor.getClass();
        lazyJavaResolverContext.getClass();
        List list = this.f73896b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((SyntheticJavaPartsProvider) it.next()).b(classDescriptor, lazyJavaResolverContext));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public final ArrayList c(ClassDescriptor classDescriptor, LazyJavaResolverContext lazyJavaResolverContext) {
        classDescriptor.getClass();
        lazyJavaResolverContext.getClass();
        List list = this.f73896b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((SyntheticJavaPartsProvider) it.next()).c(classDescriptor, lazyJavaResolverContext));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public final void d(ClassDescriptor classDescriptor, Name name, ArrayList arrayList, LazyJavaResolverContext lazyJavaResolverContext) {
        classDescriptor.getClass();
        name.getClass();
        lazyJavaResolverContext.getClass();
        Iterator it = this.f73896b.iterator();
        while (it.hasNext()) {
            ((SyntheticJavaPartsProvider) it.next()).d(classDescriptor, name, arrayList, lazyJavaResolverContext);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public final void e(ClassDescriptor classDescriptor, Name name, ArrayList arrayList, LazyJavaResolverContext lazyJavaResolverContext) {
        classDescriptor.getClass();
        name.getClass();
        lazyJavaResolverContext.getClass();
        Iterator it = this.f73896b.iterator();
        while (it.hasNext()) {
            ((SyntheticJavaPartsProvider) it.next()).e(classDescriptor, name, arrayList, lazyJavaResolverContext);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public final PropertyDescriptorImpl f(ClassDescriptor classDescriptor, PropertyDescriptorImpl propertyDescriptorImpl, LazyJavaResolverContext lazyJavaResolverContext) {
        propertyDescriptorImpl.getClass();
        lazyJavaResolverContext.getClass();
        Iterator it = this.f73896b.iterator();
        while (it.hasNext()) {
            propertyDescriptorImpl = ((SyntheticJavaPartsProvider) it.next()).f(classDescriptor, propertyDescriptorImpl, lazyJavaResolverContext);
        }
        return propertyDescriptorImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public final ArrayList g(ClassDescriptor classDescriptor, LazyJavaResolverContext lazyJavaResolverContext) {
        classDescriptor.getClass();
        lazyJavaResolverContext.getClass();
        List list = this.f73896b;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((SyntheticJavaPartsProvider) it.next()).g(classDescriptor, lazyJavaResolverContext));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public final void h(ClassDescriptor classDescriptor, ArrayList arrayList, LazyJavaResolverContext lazyJavaResolverContext) {
        classDescriptor.getClass();
        lazyJavaResolverContext.getClass();
        Iterator it = this.f73896b.iterator();
        while (it.hasNext()) {
            ((SyntheticJavaPartsProvider) it.next()).h(classDescriptor, arrayList, lazyJavaResolverContext);
        }
    }
}
