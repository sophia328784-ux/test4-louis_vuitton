package kotlin.reflect.jvm.internal.impl.km.internal;

import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.km.KmConstructor;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class FlagDelegatesImplKt$constructorBooleanFlag$1 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FlagDelegatesImplKt$constructorBooleanFlag$1 f72769b = new FlagDelegatesImplKt$constructorBooleanFlag$1(KmConstructor.class, "flags", "getFlags$kotlin_metadata()I", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Integer.valueOf(((KmConstructor) obj).f72704a);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((KmConstructor) obj).f72704a = ((Number) obj2).intValue();
    }
}
