package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmPropertyExtension;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmPropertyExtension implements KmPropertyExtension {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KmExtensionType f72812a;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f72812a = new KmExtensionType(Reflection.f71922a.b(JvmPropertyExtension.class));
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtension
    public final KmExtensionType getType() {
        return f72812a;
    }
}
