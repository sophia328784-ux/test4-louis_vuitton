package kotlin.reflect.jvm.internal.impl.km;

import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class Attributes$modality$14 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Attributes$modality$14 f72658b = new Attributes$modality$14(KmPropertyAccessorAttributes.class, "flags", "getFlags$kotlin_metadata()I", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Integer.valueOf(((KmPropertyAccessorAttributes) obj).f72735a);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((KmPropertyAccessorAttributes) obj).f72735a = ((Number) obj2).intValue();
    }
}
