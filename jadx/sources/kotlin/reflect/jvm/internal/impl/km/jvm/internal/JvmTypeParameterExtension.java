package kotlin.reflect.jvm.internal.impl.km.jvm.internal;

import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtensionType;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmTypeParameterExtension;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmTypeParameterExtension implements KmTypeParameterExtension {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final KmExtensionType f72816b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f72817a = new ArrayList();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f72816b = new KmExtensionType(Reflection.f71922a.b(JvmTypeParameterExtension.class));
    }

    @Override // kotlin.reflect.jvm.internal.impl.km.internal.extensions.KmExtension
    public final KmExtensionType getType() {
        return f72816b;
    }
}
