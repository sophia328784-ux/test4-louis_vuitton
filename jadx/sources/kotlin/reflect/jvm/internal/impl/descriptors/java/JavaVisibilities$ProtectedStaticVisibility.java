package kotlin.reflect.jvm.internal.impl.descriptors.java;

import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaVisibilities$ProtectedStaticVisibility extends Visibility {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JavaVisibilities$ProtectedStaticVisibility f72573c = new JavaVisibilities$ProtectedStaticVisibility("protected_static", true);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public final String b() {
        return "protected/*protected static*/";
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public final Visibility c() {
        return Visibilities.Protected.f72418c;
    }
}
