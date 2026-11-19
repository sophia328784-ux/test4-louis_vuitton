package kotlinx.datetime.format;

import defpackage.lc0;
import java.time.DateTimeException;
import java.time.ZoneOffset;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.UtcOffset;
import kotlinx.datetime.UtcOffsetJvmKt;
import kotlinx.datetime.internal.format.parser.Copyable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B7\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/datetime/format/IncompleteUtcOffset;", "Lkotlinx/datetime/format/UtcOffsetFieldContainer;", "Lkotlinx/datetime/internal/format/parser/Copyable;", "", "isNegative", "", "totalHoursAbs", "minutesOfHour", "secondsOfMinute", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IncompleteUtcOffset implements UtcOffsetFieldContainer, Copyable<IncompleteUtcOffset> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Boolean f75304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f75305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f75306c;
    public Integer d;

    public /* synthetic */ IncompleteUtcOffset(Boolean bool, Integer num, Integer num2, Integer num3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : num, (i2 & 4) != 0 ? null : num2, (i2 & 8) != 0 ? null : num3);
    }

    public final UtcOffset a() {
        int i2 = Intrinsics.c(this.f75304a, Boolean.TRUE) ? -1 : 1;
        Integer num = this.f75305b;
        Integer numValueOf = num != null ? Integer.valueOf(num.intValue() * i2) : null;
        Integer num2 = this.f75306c;
        Integer numValueOf2 = num2 != null ? Integer.valueOf(num2.intValue() * i2) : null;
        Integer num3 = this.d;
        Integer numValueOf3 = num3 != null ? Integer.valueOf(num3.intValue() * i2) : null;
        Lazy lazy = UtcOffsetJvmKt.f75247a;
        try {
            if (numValueOf != null) {
                ZoneOffset zoneOffsetOfHoursMinutesSeconds = ZoneOffset.ofHoursMinutesSeconds(numValueOf.intValue(), numValueOf2 != null ? numValueOf2.intValue() : 0, numValueOf3 != null ? numValueOf3.intValue() : 0);
                zoneOffsetOfHoursMinutesSeconds.getClass();
                return new UtcOffset(zoneOffsetOfHoursMinutesSeconds);
            }
            if (numValueOf2 != null) {
                ZoneOffset zoneOffsetOfHoursMinutesSeconds2 = ZoneOffset.ofHoursMinutesSeconds(numValueOf2.intValue() / 60, numValueOf2.intValue() % 60, numValueOf3 != null ? numValueOf3.intValue() : 0);
                zoneOffsetOfHoursMinutesSeconds2.getClass();
                return new UtcOffset(zoneOffsetOfHoursMinutesSeconds2);
            }
            ZoneOffset zoneOffsetOfTotalSeconds = ZoneOffset.ofTotalSeconds(numValueOf3 != null ? numValueOf3.intValue() : 0);
            zoneOffsetOfTotalSeconds.getClass();
            return new UtcOffset(zoneOffsetOfTotalSeconds);
        } catch (DateTimeException e2) {
            lc0.u(e2);
            return null;
        }
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Integer getF75305b() {
        return this.f75305b;
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        return new IncompleteUtcOffset(this.f75304a, this.f75305b, this.f75306c, this.d);
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    /* JADX INFO: renamed from: e, reason: from getter */
    public final Integer getF75306c() {
        return this.f75306c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IncompleteUtcOffset)) {
            return false;
        }
        IncompleteUtcOffset incompleteUtcOffset = (IncompleteUtcOffset) obj;
        return Intrinsics.c(this.f75304a, incompleteUtcOffset.f75304a) && Intrinsics.c(this.f75305b, incompleteUtcOffset.f75305b) && Intrinsics.c(this.f75306c, incompleteUtcOffset.f75306c) && Intrinsics.c(this.d, incompleteUtcOffset.d);
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    public final void f(Boolean bool) {
        this.f75304a = bool;
    }

    public final int hashCode() {
        Boolean bool = this.f75304a;
        int iHashCode = bool != null ? bool.hashCode() : 0;
        Integer num = this.f75305b;
        int iHashCode2 = iHashCode + (num != null ? num.hashCode() : 0);
        Integer num2 = this.f75306c;
        int iHashCode3 = iHashCode2 + (num2 != null ? num2.hashCode() : 0);
        Integer num3 = this.d;
        return iHashCode3 + (num3 != null ? num3.hashCode() : 0);
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    public final void i(Integer num) {
        this.f75306c = num;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    /* JADX INFO: renamed from: isNegative, reason: from getter */
    public final Boolean getF75304a() {
        return this.f75304a;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    public final void l(Integer num) {
        this.f75305b = num;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    public final void m(Integer num) {
        this.d = num;
    }

    @Override // kotlinx.datetime.format.UtcOffsetFieldContainer
    /* JADX INFO: renamed from: q, reason: from getter */
    public final Integer getD() {
        return this.d;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        Boolean bool = this.f75304a;
        if (bool != null) {
            str = bool.booleanValue() ? "-" : "+";
        } else {
            str = " ";
        }
        sb.append(str);
        Object obj = this.f75305b;
        if (obj == null) {
            obj = "??";
        }
        sb.append(obj);
        sb.append(':');
        Object obj2 = this.f75306c;
        if (obj2 == null) {
            obj2 = "??";
        }
        sb.append(obj2);
        sb.append(':');
        Integer num = this.d;
        sb.append(num != null ? num : "??");
        return sb.toString();
    }

    public IncompleteUtcOffset(Boolean bool, Integer num, Integer num2, Integer num3) {
        this.f75304a = bool;
        this.f75305b = num;
        this.f75306c = num2;
        this.d = num3;
    }

    public IncompleteUtcOffset() {
        this(null, null, null, null, 15, null);
    }
}
