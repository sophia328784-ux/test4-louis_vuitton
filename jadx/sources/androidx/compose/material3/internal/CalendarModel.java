package androidx.compose.material3.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/material3/internal/CalendarModel;", "", "Ljava/util/Locale;", "Landroidx/compose/material3/CalendarLocale;", "locale", "<init>", "(Ljava/util/Locale;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class CalendarModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Locale f7587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f7588b = new LinkedHashMap();

    public CalendarModel(Locale locale) {
        this.f7587a = locale;
    }

    public abstract String a(long j2, String str, Locale locale);

    public abstract DateInputFormat b(Locale locale);

    public abstract int c();

    public abstract CalendarMonth d(int i2, int i3);

    public abstract CalendarMonth e(long j2);

    public abstract CalendarMonth f(CalendarDate calendarDate);

    public abstract CalendarDate g();

    public abstract ArrayList h();

    public abstract CalendarDate i(String str, String str2, Locale locale);

    public abstract CalendarMonth j(CalendarMonth calendarMonth, int i2);
}
