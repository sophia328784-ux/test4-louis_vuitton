package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultTypeAttributeTranslator implements TypeAttributeTranslator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultTypeAttributeTranslator f74181a = new DefaultTypeAttributeTranslator();

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeAttributeTranslator
    public final TypeAttributes a(Annotations annotations) {
        annotations.getClass();
        if (annotations.isEmpty()) {
            TypeAttributes.f74232c.getClass();
            return TypeAttributes.d;
        }
        TypeAttributes.Companion companion = TypeAttributes.f74232c;
        List listO = CollectionsKt.O(new AnnotationsTypeAttribute(annotations));
        companion.getClass();
        return TypeAttributes.Companion.c(listO);
    }
}
