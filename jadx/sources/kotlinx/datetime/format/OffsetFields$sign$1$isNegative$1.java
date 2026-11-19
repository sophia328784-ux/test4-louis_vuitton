package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
final /* synthetic */ class OffsetFields$sign$1$isNegative$1 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final OffsetFields$sign$1$isNegative$1 f75339b = new OffsetFields$sign$1$isNegative$1(UtcOffsetFieldContainer.class, "isNegative", "isNegative()Ljava/lang/Boolean;", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return ((UtcOffsetFieldContainer) obj).isNegative();
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((UtcOffsetFieldContainer) obj).f((Boolean) obj2);
    }
}
