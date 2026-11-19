package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
public /* synthetic */ class OffsetFields$secondsOfMinute$1 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final OffsetFields$secondsOfMinute$1 f75337b = new OffsetFields$secondsOfMinute$1(UtcOffsetFieldContainer.class, "secondsOfMinute", "getSecondsOfMinute()Ljava/lang/Integer;", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return ((UtcOffsetFieldContainer) obj).q();
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((UtcOffsetFieldContainer) obj).m((Integer) obj2);
    }
}
