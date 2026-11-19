package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmFunctionExtension;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmFunctionExtension implements KmFunctionExtension {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KmExtensionType f72809a;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f72809a = new KmExtensionType(Reflection.f71922a.b(JvmFunctionExtension.class));
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtension
    public final KmExtensionType getType() {
        return f72809a;
    }
}
