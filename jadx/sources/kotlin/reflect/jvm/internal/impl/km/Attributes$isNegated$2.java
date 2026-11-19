package kotlin.reflect.jvm.internal.impl.km;

import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class Attributes$isNegated$2 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Attributes$isNegated$2 f72651b = new Attributes$isNegated$2(KmEffectExpression.class, "flags", "getFlags$kotlin_metadata()I", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return Integer.valueOf(((KmEffectExpression) obj).f72710a);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((KmEffectExpression) obj).f72710a = ((Number) obj2).intValue();
    }
}
