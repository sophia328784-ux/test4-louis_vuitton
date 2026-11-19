package kotlin.reflect.jvm.internal.impl.km.internal;

import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.km.KmProperty;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class FlagDelegatesImplKt$propertyBooleanFlag$1 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FlagDelegatesImplKt$propertyBooleanFlag$1 f72772b = new FlagDelegatesImplKt$propertyBooleanFlag$1(KmProperty.class, "flags", "getFlags$kotlin_metadata()I", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Integer.valueOf(((KmProperty) obj).f72726a);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((KmProperty) obj).f72726a = ((Number) obj2).intValue();
    }
}
