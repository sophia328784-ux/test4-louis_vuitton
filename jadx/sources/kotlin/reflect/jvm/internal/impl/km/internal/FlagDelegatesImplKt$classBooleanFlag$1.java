package kotlin.reflect.jvm.internal.impl.km.internal;

import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.km.KmClass;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class FlagDelegatesImplKt$classBooleanFlag$1 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FlagDelegatesImplKt$classBooleanFlag$1 f72768b = new FlagDelegatesImplKt$classBooleanFlag$1(KmClass.class, "flags", "getFlags$kotlin_metadata()I", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Integer.valueOf(((KmClass) obj).f72691a);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((KmClass) obj).f72691a = ((Number) obj2).intValue();
    }
}
