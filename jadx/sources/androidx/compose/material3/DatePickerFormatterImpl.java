package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarModel_androidKt;
import defpackage.fc;
import java.util.LinkedHashMap;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/material3/DatePickerFormatterImpl;", "Landroidx/compose/material3/DatePickerFormatter;", "", "yearSelectionSkeleton", "selectedDateSkeleton", "selectedDateDescriptionSkeleton", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class DatePickerFormatterImpl implements DatePickerFormatter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6779c;
    public final LinkedHashMap d = new LinkedHashMap();

    public DatePickerFormatterImpl(String str, String str2, String str3) {
        this.f6777a = str;
        this.f6778b = str2;
        this.f6779c = str3;
    }

    @Override // androidx.compose.material3.DatePickerFormatter
    public final String a(Long l, Locale locale) {
        return CalendarModel_androidKt.a(l.longValue(), this.f6777a, locale, this.d);
    }

    @Override // androidx.compose.material3.DatePickerFormatter
    public final String b(Long l, Locale locale, boolean z) {
        if (l == null) {
            return null;
        }
        return CalendarModel_androidKt.a(l.longValue(), z ? this.f6779c : this.f6778b, locale, this.d);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DatePickerFormatterImpl)) {
            return false;
        }
        DatePickerFormatterImpl datePickerFormatterImpl = (DatePickerFormatterImpl) obj;
        return Intrinsics.c(this.f6777a, datePickerFormatterImpl.f6777a) && Intrinsics.c(this.f6778b, datePickerFormatterImpl.f6778b) && Intrinsics.c(this.f6779c, datePickerFormatterImpl.f6779c);
    }

    public final int hashCode() {
        return this.f6779c.hashCode() + fc.b(this.f6777a.hashCode() * 31, 31, this.f6778b);
    }
}
