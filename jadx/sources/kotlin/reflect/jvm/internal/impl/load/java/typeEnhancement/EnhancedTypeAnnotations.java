package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Iterator;
import kotlin.collections.EmptyIterator;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
final class EnhancedTypeAnnotations implements Annotations {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FqName f73101b;

    public EnhancedTypeAnnotations(FqName fqName) {
        fqName.getClass();
        this.f73101b = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final /* bridge */ boolean C1(FqName fqName) {
        return Annotations.DefaultImpls.b(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<AnnotationDescriptor> iterator() {
        EmptyList.f71768b.getClass();
        return EmptyIterator.f71767b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final AnnotationDescriptor j(FqName fqName) {
        fqName.getClass();
        if (Intrinsics.c(fqName, this.f73101b)) {
            return EnhancedTypeAnnotationDescriptor.f73100a;
        }
        return null;
    }
}
