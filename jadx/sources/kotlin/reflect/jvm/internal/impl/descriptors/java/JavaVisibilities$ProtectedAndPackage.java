package kotlin.reflect.jvm.internal.impl.descriptors.java;

import kotlin.collections.builders.MapBuilder;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaVisibilities$ProtectedAndPackage extends Visibility {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JavaVisibilities$ProtectedAndPackage f72572c = new JavaVisibilities$ProtectedAndPackage("protected_and_package", true);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public final Integer a(Visibility visibility) {
        visibility.getClass();
        if (this == visibility) {
            return 0;
        }
        if (visibility == Visibilities.Internal.f72413c) {
            return null;
        }
        MapBuilder mapBuilder = Visibilities.f72411a;
        return (visibility == Visibilities.Private.f72416c || visibility == Visibilities.PrivateToThis.f72417c) ? 1 : -1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public final String b() {
        return "protected/*protected and package*/";
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
    public final Visibility c() {
        return Visibilities.Protected.f72418c;
    }
}
