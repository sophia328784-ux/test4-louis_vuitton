package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.lang.annotation.Annotation;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectAnnotationSource implements SourceElement {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Annotation f72577b;

    public ReflectAnnotationSource(Annotation annotation) {
        annotation.getClass();
        this.f72577b = annotation;
    }
}
