package androidx.compose.material3.internal;

import com.sightcall.universal.media.offline.FileUtils;
import java.time.DayOfWeek;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.chrono.Chronology;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.format.DateTimeParseException;
import java.time.format.DecimalStyle;
import java.time.format.FormatStyle;
import java.time.format.TextStyle;
import java.time.temporal.WeekFields;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.AbstractCollection;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0007B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/material3/internal/CalendarModelImpl;", "Landroidx/compose/material3/internal/CalendarModel;", "Ljava/util/Locale;", "Landroidx/compose/material3/CalendarLocale;", "locale", "<init>", "(Ljava/util/Locale;)V", "Companion", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CalendarModelImpl extends CalendarModel {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f7589e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ZoneId f7590f = ZoneId.of("UTC");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7591c;
    public final ArrayList d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/internal/CalendarModelImpl$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static DateTimeFormatter a(String str, Locale locale, LinkedHashMap linkedHashMap) {
            String str2 = "P:" + str + locale.toLanguageTag();
            Object objWithDecimalStyle = linkedHashMap.get(str2);
            if (objWithDecimalStyle == null) {
                objWithDecimalStyle = DateTimeFormatter.ofPattern(str, locale).withDecimalStyle(DecimalStyle.of(locale));
                linkedHashMap.put(str2, objWithDecimalStyle);
            }
            objWithDecimalStyle.getClass();
            return (DateTimeFormatter) objWithDecimalStyle;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class EntriesMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ EnumEntries f7592a = EnumEntriesKt.a(DayOfWeek.values());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public CalendarModelImpl(Locale locale) {
        super(locale);
        this.f7591c = WeekFields.of(locale).getFirstDayOfWeek().getValue();
        EnumEntries enumEntries = EntriesMappings.f7592a;
        ArrayList arrayList = new ArrayList(((AbstractCollection) enumEntries).getF71784f());
        int f71784f = ((AbstractCollection) enumEntries).getF71784f();
        for (int i2 = 0; i2 < f71784f; i2++) {
            DayOfWeek dayOfWeek = (DayOfWeek) enumEntries.get(i2);
            arrayList.add(new Pair(dayOfWeek.getDisplayName(TextStyle.FULL_STANDALONE, locale), dayOfWeek.getDisplayName(TextStyle.NARROW_STANDALONE, locale)));
        }
        this.d = arrayList;
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public final String a(long j2, String str, Locale locale) {
        f7589e.getClass();
        return Instant.ofEpochMilli(j2).atZone(f7590f).toLocalDate().format(Companion.a(str, locale, this.f7588b));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public final DateInputFormat b(Locale locale) {
        String strF = StringsKt.F(StringsKt.J(new Regex("y{1,4}").replace(new Regex("M{1,2}").replace(new Regex("d{1,2}").replace(new Regex("[^dMy/\\-.]").replace(DateTimeFormatterBuilder.getLocalizedDateTimePattern(FormatStyle.SHORT, null, Chronology.ofLocale(locale), locale), ""), "dd"), "MM"), "yyyy"), "My", "M/y"), FileUtils.HIDDEN_PREFIX);
        MatchResult matchResultB = new Regex("[/\\-.]").b(strF);
        matchResultB.getClass();
        MatchGroup matchGroupH = matchResultB.getF74548c().h(0);
        matchGroupH.getClass();
        return new DateInputFormat(strF, matchGroupH.f74543a.charAt(0));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    /* JADX INFO: renamed from: c, reason: from getter */
    public final int getF7591c() {
        return this.f7591c;
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public final CalendarMonth d(int i2, int i3) {
        return l(LocalDate.of(i2, i3, 1));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public final CalendarMonth e(long j2) {
        return l(Instant.ofEpochMilli(j2).atZone(f7590f).withDayOfMonth(1).toLocalDate());
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public final CalendarMonth f(CalendarDate calendarDate) {
        return l(LocalDate.of(calendarDate.f7584b, calendarDate.f7585c, 1));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public final CalendarDate g() {
        LocalDate localDateNow = LocalDate.now();
        return new CalendarDate(localDateNow.getYear(), localDateNow.getMonthValue(), localDateNow.getDayOfMonth(), localDateNow.atTime(LocalTime.MIDNIGHT).atZone(f7590f).toInstant().toEpochMilli());
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    /* JADX INFO: renamed from: h, reason: from getter */
    public final ArrayList getD() {
        return this.d;
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public final CalendarDate i(String str, String str2, Locale locale) {
        f7589e.getClass();
        try {
            LocalDate localDate = LocalDate.parse(str, Companion.a(str2, locale, this.f7588b));
            return new CalendarDate(localDate.getYear(), localDate.getMonth().getValue(), localDate.getDayOfMonth(), localDate.atTime(LocalTime.MIDNIGHT).atZone(f7590f).toInstant().toEpochMilli());
        } catch (DateTimeParseException unused) {
            return null;
        }
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public final CalendarMonth j(CalendarMonth calendarMonth, int i2) {
        return i2 <= 0 ? calendarMonth : l(Instant.ofEpochMilli(calendarMonth.f7596e).atZone(f7590f).toLocalDate().plusMonths(i2));
    }

    public final CalendarDate k(long j2) {
        LocalDate localDate = Instant.ofEpochMilli(j2).atZone(f7590f).toLocalDate();
        return new CalendarDate(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth(), 1000 * localDate.atStartOfDay().toEpochSecond(ZoneOffset.UTC));
    }

    public final CalendarMonth l(LocalDate localDate) {
        int value = localDate.getDayOfWeek().getValue() - this.f7591c;
        if (value < 0) {
            value += 7;
        }
        return new CalendarMonth(localDate.getYear(), localDate.getMonthValue(), localDate.lengthOfMonth(), value, localDate.atTime(LocalTime.MIDNIGHT).atZone(f7590f).toInstant().toEpochMilli());
    }

    public final String toString() {
        return "CalendarModel";
    }
}
