package kotlinx.datetime.format;

import defpackage.b21;
import defpackage.lc0;
import defpackage.o60;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.datetime.DateTimeFormatException;
import kotlinx.datetime.LocalTime;
import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.format.parser.Copyable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002BO\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/datetime/format/IncompleteLocalTime;", "Lkotlinx/datetime/format/TimeFieldContainer;", "Lkotlinx/datetime/internal/format/parser/Copyable;", "", "hour", "hourOfAmPm", "Lkotlinx/datetime/format/AmPmMarker;", "amPm", "minute", "second", "nanosecond", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IncompleteLocalTime implements TimeFieldContainer, Copyable<IncompleteLocalTime> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Integer f75299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f75300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AmPmMarker f75301c;
    public Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Integer f75302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer f75303f;

    public /* synthetic */ IncompleteLocalTime(Integer num, Integer num2, AmPmMarker amPmMarker, Integer num3, Integer num4, Integer num5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : num2, (i2 & 4) != 0 ? null : amPmMarker, (i2 & 8) != 0 ? null : num3, (i2 & 16) != 0 ? null : num4, (i2 & 32) != 0 ? null : num5);
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void A(Integer num) {
        this.f75299a = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: C, reason: from getter */
    public final Integer getF75299a() {
        return this.f75299a;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void a(AmPmMarker amPmMarker) {
        this.f75301c = amPmMarker;
    }

    public final LocalTime b() {
        int iIntValue;
        int iIntValue2;
        Integer num = this.f75299a;
        Integer num2 = this.f75300b;
        Integer numValueOf = null;
        if (num != null) {
            iIntValue = num.intValue();
            if (num2 != null && ((iIntValue + 11) % 12) + 1 != (iIntValue2 = num2.intValue())) {
                b21.n(o60.h(iIntValue, iIntValue2, "Inconsistent hour and hour-of-am-pm: hour is ", ", but hour-of-am-pm is "));
                return null;
            }
            AmPmMarker amPmMarker = this.f75301c;
            if (amPmMarker != null) {
                if ((amPmMarker == AmPmMarker.PM) != (iIntValue >= 12)) {
                    lc0.m("Inconsistent hour and the AM/PM marker: hour is ", iIntValue, ", but the AM/PM marker is ", amPmMarker);
                    return null;
                }
            }
        } else {
            if (num2 != null) {
                int iIntValue3 = num2.intValue();
                AmPmMarker amPmMarker2 = this.f75301c;
                if (amPmMarker2 != null) {
                    if (iIntValue3 == 12) {
                        iIntValue3 = 0;
                    }
                    numValueOf = Integer.valueOf(iIntValue3 + (amPmMarker2 != AmPmMarker.PM ? 0 : 12));
                }
            }
            if (numValueOf == null) {
                throw new DateTimeFormatException("Incomplete time: missing hour");
            }
            iIntValue = numValueOf.intValue();
        }
        Integer num3 = this.d;
        LocalDateFormatKt.a(num3, "minute");
        int iIntValue4 = num3.intValue();
        Integer num4 = this.f75302e;
        int iIntValue5 = num4 != null ? num4.intValue() : 0;
        Integer num5 = this.f75303f;
        return new LocalTime(iIntValue, iIntValue4, iIntValue5, num5 != null ? num5.intValue() : 0);
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: c, reason: from getter */
    public final Integer getF75300b() {
        return this.f75300b;
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        return new IncompleteLocalTime(this.f75299a, this.f75300b, this.f75301c, this.d, this.f75302e, this.f75303f);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IncompleteLocalTime)) {
            return false;
        }
        IncompleteLocalTime incompleteLocalTime = (IncompleteLocalTime) obj;
        return Intrinsics.c(this.f75299a, incompleteLocalTime.f75299a) && Intrinsics.c(this.f75300b, incompleteLocalTime.f75300b) && this.f75301c == incompleteLocalTime.f75301c && Intrinsics.c(this.d, incompleteLocalTime.d) && Intrinsics.c(this.f75302e, incompleteLocalTime.f75302e) && Intrinsics.c(this.f75303f, incompleteLocalTime.f75303f);
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void g(DecimalFraction decimalFraction) {
        this.f75303f = decimalFraction != null ? Integer.valueOf(decimalFraction.a(9)) : null;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: h, reason: from getter */
    public final Integer getF75302e() {
        return this.f75302e;
    }

    public final int hashCode() {
        Integer num = this.f75299a;
        int iIntValue = (num != null ? num.intValue() : 0) * 31;
        Integer num2 = this.f75300b;
        int iIntValue2 = ((num2 != null ? num2.intValue() : 0) * 31) + iIntValue;
        AmPmMarker amPmMarker = this.f75301c;
        int iHashCode = ((amPmMarker != null ? amPmMarker.hashCode() : 0) * 31) + iIntValue2;
        Integer num3 = this.d;
        int iIntValue3 = ((num3 != null ? num3.intValue() : 0) * 31) + iHashCode;
        Integer num4 = this.f75302e;
        int iIntValue4 = ((num4 != null ? num4.intValue() : 0) * 31) + iIntValue3;
        Integer num5 = this.f75303f;
        return iIntValue4 + (num5 != null ? num5.intValue() : 0);
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void j(Integer num) {
        this.f75302e = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: n, reason: from getter */
    public final AmPmMarker getF75301c() {
        return this.f75301c;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void o(Integer num) {
        this.f75300b = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    /* JADX INFO: renamed from: r, reason: from getter */
    public final Integer getD() {
        return this.d;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void s(Integer num) {
        this.d = num;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    public final String toString() {
        String strB;
        StringBuilder sb = new StringBuilder();
        Object obj = this.f75299a;
        if (obj == null) {
            obj = "??";
        }
        sb.append(obj);
        sb.append(':');
        Object obj2 = this.d;
        if (obj2 == null) {
            obj2 = "??";
        }
        sb.append(obj2);
        sb.append(':');
        Integer num = this.f75302e;
        sb.append(num != null ? num : "??");
        sb.append(JwtParser.SEPARATOR_CHAR);
        Integer num2 = this.f75303f;
        if (num2 != null) {
            String strValueOf = String.valueOf(num2.intValue());
            strB = StringsKt.B(9 - strValueOf.length(), strValueOf);
            if (strB == null) {
                strB = "???";
            }
        } else {
            strB = "???";
        }
        sb.append(strB);
        return sb.toString();
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final DecimalFraction v() {
        Integer num = this.f75303f;
        if (num != null) {
            return new DecimalFraction(num.intValue(), 9);
        }
        return null;
    }

    public IncompleteLocalTime(Integer num, Integer num2, AmPmMarker amPmMarker, Integer num3, Integer num4, Integer num5) {
        this.f75299a = num;
        this.f75300b = num2;
        this.f75301c = amPmMarker;
        this.d = num3;
        this.f75302e = num4;
        this.f75303f = num5;
    }

    public IncompleteLocalTime() {
        this(null, null, null, null, null, null, 63, null);
    }
}
