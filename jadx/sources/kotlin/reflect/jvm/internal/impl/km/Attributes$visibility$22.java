package kotlin.reflect.jvm.internal.impl.km;

import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class Attributes$visibility$22 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Attributes$visibility$22 f72665b = new Attributes$visibility$22(KmTypeAlias.class, "flags", "getFlags$kotlin_metadata()I", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Integer.valueOf(((KmTypeAlias) obj).f72742a);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((KmTypeAlias) obj).f72742a = ((Number) obj2).intValue();
    }
}
