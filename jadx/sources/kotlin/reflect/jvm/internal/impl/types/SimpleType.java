package kotlin.reflect.jvm.internal.impl.types;

import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SimpleType extends UnwrappedType implements SimpleTypeMarker, TypeArgumentListMarker {
    public SimpleType() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    /* JADX INFO: renamed from: O0, reason: merged with bridge method [inline-methods] */
    public abstract SimpleType L0(boolean z);

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public abstract SimpleType N0(TypeAttributes typeAttributes);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<AnnotationDescriptor> it = getAnnotations().iterator();
        while (it.hasNext()) {
            String[] strArr = {"[", DescriptorRenderer.d.z(it.next(), null), "] "};
            for (int i2 = 0; i2 < 3; i2++) {
                sb.append(strArr[i2]);
            }
        }
        sb.append(H0());
        if (!F0().isEmpty()) {
            CollectionsKt.J(F0(), sb, ", ", "<", ">", null, 112);
        }
        if (I0()) {
            sb.append("?");
        }
        return sb.toString();
    }
}
