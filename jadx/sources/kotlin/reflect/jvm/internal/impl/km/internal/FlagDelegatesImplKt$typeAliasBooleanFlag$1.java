package kotlin.reflect.jvm.internal.impl.km.internal;

import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.km.KmTypeAlias;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class FlagDelegatesImplKt$typeAliasBooleanFlag$1 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FlagDelegatesImplKt$typeAliasBooleanFlag$1 f72773b = new FlagDelegatesImplKt$typeAliasBooleanFlag$1(KmTypeAlias.class, "flags", "getFlags$kotlin_metadata()I", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Integer.valueOf(((KmTypeAlias) obj).f72742a);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((KmTypeAlias) obj).f72742a = ((Number) obj2).intValue();
    }
}
