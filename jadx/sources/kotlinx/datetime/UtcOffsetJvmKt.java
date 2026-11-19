package kotlinx.datetime;

import defpackage.k51;
import java.time.DateTimeException;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class UtcOffsetJvmKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f75247a = LazyKt.b(UtcOffsetJvmKt$isoFormat$2.f75252c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f75248b = LazyKt.b(UtcOffsetJvmKt$isoBasicFormat$2.f75251c);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f75249c = LazyKt.b(UtcOffsetJvmKt$fourDigitsFormat$2.f75250c);

    public static final UtcOffset a(String str, DateTimeFormatter dateTimeFormatter) {
        try {
            return new UtcOffset((ZoneOffset) dateTimeFormatter.parse(str, new k51()));
        } catch (DateTimeException e2) {
            throw new DateTimeFormatException(e2);
        }
    }
}
