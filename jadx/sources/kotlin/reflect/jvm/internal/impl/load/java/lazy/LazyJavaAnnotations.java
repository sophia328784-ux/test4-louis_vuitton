package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationMapper;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaAnnotations implements Annotations {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyJavaResolverContext f72954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JavaAnnotationOwner f72955c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MemoizedFunctionToNullable f72956e;

    public LazyJavaAnnotations(LazyJavaResolverContext lazyJavaResolverContext, JavaAnnotationOwner javaAnnotationOwner, boolean z) {
        lazyJavaResolverContext.getClass();
        javaAnnotationOwner.getClass();
        this.f72954b = lazyJavaResolverContext;
        this.f72955c = javaAnnotationOwner;
        this.d = z;
        this.f72956e = lazyJavaResolverContext.f72962a.f72944a.g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaAnnotations f72957b;

            {
                this.f72957b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                JavaAnnotation javaAnnotation = (JavaAnnotation) obj;
                javaAnnotation.getClass();
                Name name = JavaAnnotationMapper.f72920a;
                LazyJavaAnnotations lazyJavaAnnotations = this.f72957b;
                return JavaAnnotationMapper.b(lazyJavaAnnotations.f72954b, javaAnnotation, lazyJavaAnnotations.d);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final /* bridge */ boolean C1(FqName fqName) {
        return Annotations.DefaultImpls.b(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean isEmpty() {
        return this.f72955c.getAnnotations().isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator<AnnotationDescriptor> iterator() {
        JavaAnnotationOwner javaAnnotationOwner = this.f72955c;
        TransformingSequence transformingSequenceR = SequencesKt.r(CollectionsKt.o(javaAnnotationOwner.getAnnotations()), this.f72956e);
        Name name = JavaAnnotationMapper.f72920a;
        return new FilteringSequence.AnonymousClass1();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final AnnotationDescriptor j(FqName fqName) {
        AnnotationDescriptor annotationDescriptor;
        fqName.getClass();
        JavaAnnotationOwner javaAnnotationOwner = this.f72955c;
        JavaAnnotation javaAnnotationJ = javaAnnotationOwner.j(fqName);
        if (javaAnnotationJ != null && (annotationDescriptor = (AnnotationDescriptor) this.f72956e.invoke(javaAnnotationJ)) != null) {
            return annotationDescriptor;
        }
        Name name = JavaAnnotationMapper.f72920a;
        return JavaAnnotationMapper.a(fqName, javaAnnotationOwner, this.f72954b);
    }

    public /* synthetic */ LazyJavaAnnotations(LazyJavaResolverContext lazyJavaResolverContext, JavaAnnotationOwner javaAnnotationOwner, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyJavaResolverContext, javaAnnotationOwner, (i2 & 4) != 0 ? false : z);
    }
}
