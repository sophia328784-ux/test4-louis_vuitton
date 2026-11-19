package kotlin.reflect.jvm.internal.impl.km.internal.extensions;

import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes4.dex */
public final class KmExtensionType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KClass f72791a;

    public KmExtensionType(KClass<? extends KmExtension> kClass) {
        kClass.getClass();
        this.f72791a = kClass;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof KmExtensionType) {
            return Intrinsics.c(this.f72791a, ((KmExtensionType) obj).f72791a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f72791a.hashCode();
    }

    public final String toString() {
        return JvmClassMappingKt.b(this.f72791a).getName();
    }
}
