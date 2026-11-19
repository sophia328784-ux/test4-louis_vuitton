package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.util.ArrayMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeAttributesKt {
    /* JADX WARN: Code duplicated, block: B:18:0x004e  */
    public static final TypeAttributes a(TypeAttributes typeAttributes, Annotations annotations) {
        TypeAttributes typeAttributesC;
        typeAttributes.getClass();
        if (AnnotationsTypeAttributeKt.a(typeAttributes) == annotations) {
            return typeAttributes;
        }
        AnnotationsTypeAttribute annotationsTypeAttribute = (AnnotationsTypeAttribute) AnnotationsTypeAttributeKt.f74177b.b(typeAttributes, AnnotationsTypeAttributeKt.f74176a[0]);
        if (annotationsTypeAttribute != null) {
            if (typeAttributes.isEmpty()) {
                typeAttributesC = typeAttributes;
            } else {
                ArrayMap arrayMap = typeAttributes.f74330b;
                ArrayList arrayList = new ArrayList();
                for (Object obj : arrayMap) {
                    if (!Intrinsics.c((TypeAttribute) obj, annotationsTypeAttribute)) {
                        arrayList.add(obj);
                    }
                }
                if (arrayList.size() == typeAttributes.f74330b.f()) {
                    typeAttributesC = typeAttributes;
                } else {
                    TypeAttributes.f74232c.getClass();
                    typeAttributesC = TypeAttributes.Companion.c(arrayList);
                }
            }
            if (typeAttributesC != null) {
                typeAttributes = typeAttributesC;
            }
        }
        if (annotations.iterator().hasNext() || !annotations.isEmpty()) {
            AnnotationsTypeAttribute annotationsTypeAttribute2 = new AnnotationsTypeAttribute(annotations);
            if (typeAttributes.f74330b.get(TypeAttributes.f74232c.b(annotationsTypeAttribute2.b())) == null) {
                return typeAttributes.isEmpty() ? new TypeAttributes(CollectionsKt.O(annotationsTypeAttribute2)) : TypeAttributes.Companion.c(CollectionsKt.X(annotationsTypeAttribute2, CollectionsKt.y0(typeAttributes)));
            }
        }
        return typeAttributes;
    }
}
