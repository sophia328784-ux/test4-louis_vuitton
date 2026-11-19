package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ClassifierBasedTypeConstructor implements TypeConstructor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f74180b;

    public abstract boolean a(ClassifierDescriptor classifierDescriptor);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof TypeConstructor) && obj.hashCode() == hashCode()) {
            TypeConstructor typeConstructor = (TypeConstructor) obj;
            if (typeConstructor.getParameters().size() == getParameters().size()) {
                ClassifierDescriptor classifierDescriptorY = y();
                ClassifierDescriptor classifierDescriptorY2 = typeConstructor.y();
                if (classifierDescriptorY2 == null || ErrorUtils.f(classifierDescriptorY) || DescriptorUtils.m(classifierDescriptorY) || ErrorUtils.f(classifierDescriptorY2) || DescriptorUtils.m(classifierDescriptorY2)) {
                    return false;
                }
                return a(classifierDescriptorY2);
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f74180b;
        if (i2 != 0) {
            return i2;
        }
        ClassifierDescriptor classifierDescriptorY = y();
        int iIdentityHashCode = (ErrorUtils.f(classifierDescriptorY) || DescriptorUtils.m(classifierDescriptorY)) ? System.identityHashCode(this) : DescriptorUtils.f(classifierDescriptorY).f73683a.hashCode();
        this.f74180b = iIdentityHashCode;
        return iIdentityHashCode;
    }
}
