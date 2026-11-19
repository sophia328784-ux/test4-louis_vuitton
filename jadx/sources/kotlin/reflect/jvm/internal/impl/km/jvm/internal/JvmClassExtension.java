package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmClassExtension;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmClassExtension implements KmClassExtension {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f72805b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KmExtensionType f72806c = new KmExtensionType(Reflection.f71922a.b(JvmClassExtension.class));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f72807a = new ArrayList(0);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtension
    public final KmExtensionType getType() {
        return f72806c;
    }
}
