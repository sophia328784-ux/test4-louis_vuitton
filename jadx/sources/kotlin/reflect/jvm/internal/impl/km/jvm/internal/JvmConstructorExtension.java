package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmConstructorExtension;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmConstructorExtension implements KmConstructorExtension {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KmExtensionType f72808a;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f72808a = new KmExtensionType(Reflection.f71922a.b(JvmConstructorExtension.class));
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtension
    public final KmExtensionType getType() {
        return f72808a;
    }
}
