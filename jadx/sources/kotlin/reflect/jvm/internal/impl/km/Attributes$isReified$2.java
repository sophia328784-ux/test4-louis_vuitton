package kotlin.reflect.jvm.internal.impl.km;

import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class Attributes$isReified$2 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Attributes$isReified$2 f72653b = new Attributes$isReified$2(KmTypeParameter.class, "flags", "getFlags$kotlin_metadata()I", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Integer.valueOf(((KmTypeParameter) obj).f72745a);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((KmTypeParameter) obj).f72745a = ((Number) obj2).intValue();
    }
}
