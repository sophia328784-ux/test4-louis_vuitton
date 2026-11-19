package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UtilsKt {
    public static final String a(TypeConstructor typeConstructor) {
        StringBuilder sb = new StringBuilder();
        sb.append("type: " + typeConstructor);
        sb.append('\n');
        sb.append("hashCode: " + typeConstructor.hashCode());
        sb.append('\n');
        sb.append("javaClass: " + typeConstructor.getClass().getCanonicalName());
        sb.append('\n');
        for (DeclarationDescriptor declarationDescriptorY = typeConstructor.y(); declarationDescriptorY != null; declarationDescriptorY = declarationDescriptorY.d()) {
            sb.append("fqName: ".concat(DescriptorRenderer.f73778b.y(declarationDescriptorY)));
            sb.append('\n');
            sb.append("javaClass: " + declarationDescriptorY.getClass().getCanonicalName());
            sb.append('\n');
        }
        return sb.toString();
    }
}
