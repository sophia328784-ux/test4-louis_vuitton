package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public final class AnnotationsImpl implements Annotations {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f72433b;

    public AnnotationsImpl(List<? extends AnnotationDescriptor> list) {
        list.getClass();
        this.f72433b = list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final /* bridge */ boolean C1(FqName fqName) {
        return Annotations.DefaultImpls.b(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean isEmpty() {
        return this.f72433b.isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator<AnnotationDescriptor> iterator() {
        return this.f72433b.iterator();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final /* bridge */ AnnotationDescriptor j(FqName fqName) {
        return Annotations.DefaultImpls.a(this, fqName);
    }

    public final String toString() {
        return this.f72433b.toString();
    }
}
