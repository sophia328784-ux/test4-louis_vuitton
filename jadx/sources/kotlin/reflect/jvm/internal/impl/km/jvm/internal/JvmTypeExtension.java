package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmTypeExtension;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmTypeExtension implements KmTypeExtension {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KmExtensionType f72813c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f72814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f72815b = new ArrayList();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f72813c = new KmExtensionType(Reflection.f71922a.b(JvmTypeExtension.class));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!JvmTypeExtension.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        JvmTypeExtension jvmTypeExtension = (JvmTypeExtension) obj;
        return this.f72814a == jvmTypeExtension.f72814a && Intrinsics.c(this.f72815b, jvmTypeExtension.f72815b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtension
    public final KmExtensionType getType() {
        return f72813c;
    }

    public final int hashCode() {
        return this.f72815b.hashCode() + (Boolean.hashCode(this.f72814a) * 31);
    }
}
