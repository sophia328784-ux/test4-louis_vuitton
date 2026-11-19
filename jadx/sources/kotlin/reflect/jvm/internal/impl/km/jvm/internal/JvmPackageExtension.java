package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmPackageExtension;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmPackageExtension implements KmPackageExtension {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final KmExtensionType f72810b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f72811a = new ArrayList(0);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f72810b = new KmExtensionType(Reflection.f71922a.b(JvmPackageExtension.class));
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtension
    public final KmExtensionType getType() {
        return f72810b;
    }
}
