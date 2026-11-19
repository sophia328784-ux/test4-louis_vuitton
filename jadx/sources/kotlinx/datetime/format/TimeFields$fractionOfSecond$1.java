package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlinx.datetime.internal.DecimalFraction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
public /* synthetic */ class TimeFields$fractionOfSecond$1 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TimeFields$fractionOfSecond$1 f75347b = new TimeFields$fractionOfSecond$1(TimeFieldContainer.class, "fractionOfSecond", "getFractionOfSecond()Lkotlinx/datetime/internal/DecimalFraction;", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return ((TimeFieldContainer) obj).v();
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((TimeFieldContainer) obj).g((DecimalFraction) obj2);
    }
}
