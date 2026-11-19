package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.format.parser.Copyable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\b\u0012\u0004\u0012\u00020\u00000\u0005B3\b\u0000\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlinx/datetime/format/DateTimeComponentsContents;", "Lkotlinx/datetime/format/DateFieldContainer;", "Lkotlinx/datetime/format/TimeFieldContainer;", "Lkotlinx/datetime/format/UtcOffsetFieldContainer;", "Lkotlinx/datetime/format/DateTimeFieldContainer;", "Lkotlinx/datetime/internal/format/parser/Copyable;", "Lkotlinx/datetime/format/IncompleteLocalDate;", "date", "Lkotlinx/datetime/format/IncompleteLocalTime;", "time", "Lkotlinx/datetime/format/IncompleteUtcOffset;", "offset", "", "timeZoneId", "<init>", "(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DateTimeComponentsContents implements DateFieldContainer, TimeFieldContainer, UtcOffsetFieldContainer, DateTimeFieldContainer, Copyable<DateTimeComponentsContents> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IncompleteLocalDate f75279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IncompleteLocalTime f75280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IncompleteUtcOffset f75281c;
    public String d;

    public /* synthetic */ DateTimeComponentsContents(IncompleteLocalDate incompleteLocalDate, IncompleteLocalTime incompleteLocalTime, IncompleteUtcOffset incompleteUtcOffset, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            incompleteLocalDate = new IncompleteLocalDate(null, null, null, null, null, 31, null);
        }
        if ((i2 & 2) != 0) {
            incompleteLocalTime = new IncompleteLocalTime(null, null, null, null, null, null, 63, null);
        }
        if ((i2 & 4) != 0) {
            incompleteUtcOffset = new IncompleteUtcOffset(null, null, null, null, 15, null);
        }
        this(incompleteLocalDate, incompleteLocalTime, incompleteUtcOffset, (i2 & 8) != 0 ? null : str);
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void A(Integer num) {
        this.f75280b.f75299a = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void B(Integer num) {
        this.f75279a.d = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: C */
    public final Integer getF75299a() {
        return this.f75280b.f75299a;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void a(AmPmMarker amPmMarker) {
        this.f75280b.f75301c = amPmMarker;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    /* JADX INFO: renamed from: b */
    public final Integer getF75305b() {
        return this.f75281c.f75305b;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: c */
    public final Integer getF75300b() {
        return this.f75280b.f75300b;
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        IncompleteLocalDate incompleteLocalDate = this.f75279a;
        IncompleteLocalDate incompleteLocalDate2 = new IncompleteLocalDate(incompleteLocalDate.f75295a, incompleteLocalDate.f75296b, incompleteLocalDate.f75297c, incompleteLocalDate.d, incompleteLocalDate.f75298e);
        IncompleteLocalTime incompleteLocalTime = this.f75280b;
        IncompleteLocalTime incompleteLocalTime2 = new IncompleteLocalTime(incompleteLocalTime.f75299a, incompleteLocalTime.f75300b, incompleteLocalTime.f75301c, incompleteLocalTime.d, incompleteLocalTime.f75302e, incompleteLocalTime.f75303f);
        IncompleteUtcOffset incompleteUtcOffset = this.f75281c;
        return new DateTimeComponentsContents(incompleteLocalDate2, incompleteLocalTime2, new IncompleteUtcOffset(incompleteUtcOffset.f75304a, incompleteUtcOffset.f75305b, incompleteUtcOffset.f75306c, incompleteUtcOffset.d), this.d);
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: d */
    public final Integer getD() {
        return this.f75279a.d;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    /* JADX INFO: renamed from: e */
    public final Integer getF75306c() {
        return this.f75281c.f75306c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DateTimeComponentsContents)) {
            return false;
        }
        DateTimeComponentsContents dateTimeComponentsContents = (DateTimeComponentsContents) obj;
        return Intrinsics.c(dateTimeComponentsContents.f75279a, this.f75279a) && Intrinsics.c(dateTimeComponentsContents.f75280b, this.f75280b) && Intrinsics.c(dateTimeComponentsContents.f75281c, this.f75281c) && Intrinsics.c(dateTimeComponentsContents.d, this.d);
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    public final void f(Boolean bool) {
        this.f75281c.f75304a = bool;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void g(DecimalFraction decimalFraction) {
        this.f75280b.g(decimalFraction);
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: h */
    public final Integer getF75302e() {
        return this.f75280b.f75302e;
    }

    public final int hashCode() {
        int iHashCode = (this.f75279a.hashCode() ^ this.f75280b.hashCode()) ^ this.f75281c.hashCode();
        String str = this.d;
        return (str != null ? str.hashCode() : 0) ^ iHashCode;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    public final void i(Integer num) {
        this.f75281c.f75306c = num;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    /* JADX INFO: renamed from: isNegative */
    public final Boolean getF75304a() {
        return this.f75281c.f75304a;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void j(Integer num) {
        this.f75280b.f75302e = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void k(Integer num) {
        this.f75279a.f75298e = num;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    public final void l(Integer num) {
        this.f75281c.f75305b = num;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    public final void m(Integer num) {
        this.f75281c.d = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: n */
    public final AmPmMarker getF75301c() {
        return this.f75280b.f75301c;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void o(Integer num) {
        this.f75280b.f75300b = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void p(Integer num) {
        this.f75279a.f75296b = num;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    /* JADX INFO: renamed from: q */
    public final Integer getD() {
        return this.f75281c.d;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: r */
    public final Integer getD() {
        return this.f75280b.d;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void s(Integer num) {
        this.f75280b.d = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: t */
    public final Integer getF75295a() {
        return this.f75279a.f75295a;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void u(Integer num) {
        this.f75279a.f75297c = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final DecimalFraction v() {
        return this.f75280b.v();
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: w */
    public final Integer getF75298e() {
        return this.f75279a.f75298e;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void x(Integer num) {
        this.f75279a.f75295a = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: y */
    public final Integer getF75297c() {
        return this.f75279a.f75297c;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: z */
    public final Integer getF75296b() {
        return this.f75279a.f75296b;
    }

    public DateTimeComponentsContents(IncompleteLocalDate incompleteLocalDate, IncompleteLocalTime incompleteLocalTime, IncompleteUtcOffset incompleteUtcOffset, String str) {
        incompleteLocalDate.getClass();
        incompleteLocalTime.getClass();
        incompleteUtcOffset.getClass();
        this.f75279a = incompleteLocalDate;
        this.f75280b = incompleteLocalTime;
        this.f75281c = incompleteUtcOffset;
        this.d = str;
    }

    public DateTimeComponentsContents() {
        this(null, null, null, null, 15, null);
    }
}
