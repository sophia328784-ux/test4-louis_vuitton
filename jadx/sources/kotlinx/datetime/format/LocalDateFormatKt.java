package kotlinx.datetime.format;

import defpackage.d21;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class LocalDateFormatKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f75310a = LazyKt.b(LocalDateFormatKt$ISO_DATE$2.f75313c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f75311b = LazyKt.b(LocalDateFormatKt$ISO_DATE_BASIC$2.f75315c);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final IncompleteLocalDate f75312c = new IncompleteLocalDate(null, null, null, null, null, 31, null);

    public static final void a(Object obj, String str) {
        if (obj == null) {
            throw new DateTimeFormatException(d21.l("Can not create a ", str, " from the given input: the field ", str, " is missing"));
        }
    }
}
