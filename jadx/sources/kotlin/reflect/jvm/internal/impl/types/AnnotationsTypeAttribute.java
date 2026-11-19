package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;

/* JADX INFO: loaded from: classes4.dex */
public final class AnnotationsTypeAttribute extends TypeAttribute<AnnotationsTypeAttribute> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Annotations f74175a;

    public AnnotationsTypeAttribute(Annotations annotations) {
        annotations.getClass();
        this.f74175a = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeAttribute
    public final AnnotationsTypeAttribute a(TypeAttribute typeAttribute) {
        AnnotationsTypeAttribute annotationsTypeAttribute = (AnnotationsTypeAttribute) typeAttribute;
        if (annotationsTypeAttribute == null) {
            return this;
        }
        Annotations compositeAnnotations = annotationsTypeAttribute.f74175a;
        Annotations annotations = this.f74175a;
        annotations.getClass();
        compositeAnnotations.getClass();
        if (!annotations.isEmpty()) {
            compositeAnnotations = compositeAnnotations.isEmpty() ? annotations : new CompositeAnnotations(annotations, compositeAnnotations);
        }
        return new AnnotationsTypeAttribute(compositeAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeAttribute
    public final KClass b() {
        return Reflection.f71922a.b(AnnotationsTypeAttribute.class);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeAttribute
    public final AnnotationsTypeAttribute c(TypeAttribute typeAttribute) {
        if (Intrinsics.c((AnnotationsTypeAttribute) typeAttribute, this)) {
            return this;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AnnotationsTypeAttribute) {
            return Intrinsics.c(((AnnotationsTypeAttribute) obj).f74175a, this.f74175a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f74175a.hashCode();
    }
}
