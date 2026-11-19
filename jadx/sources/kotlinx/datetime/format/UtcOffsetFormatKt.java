package kotlinx.datetime.format;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class UtcOffsetFormatKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f75356a = LazyKt.b(UtcOffsetFormatKt$ISO_OFFSET$2.f75361c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f75357b = LazyKt.b(UtcOffsetFormatKt$ISO_OFFSET_BASIC$2.f75367c);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f75358c = LazyKt.b(UtcOffsetFormatKt$FOUR_DIGIT_OFFSET$2.f75359c);
    public static final IncompleteUtcOffset d = new IncompleteUtcOffset(null, null, null, null, 15, null);
}
