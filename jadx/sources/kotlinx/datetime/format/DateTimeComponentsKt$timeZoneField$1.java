package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
public /* synthetic */ class DateTimeComponentsKt$timeZoneField$1 extends MutablePropertyReference1Impl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DateTimeComponentsKt$timeZoneField$1 f75285b = new DateTimeComponentsKt$timeZoneField$1(DateTimeComponentsContents.class, "timeZoneId", "getTimeZoneId()Ljava/lang/String;", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return ((DateTimeComponentsContents) obj).d;
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
    public final void o(Object obj, Object obj2) {
        ((DateTimeComponentsContents) obj).d = (String) obj2;
    }
}
