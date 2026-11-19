package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.NamedUnsignedIntFieldFormatDirective;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/format/DayOfWeekDirective;", "Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective;", "Lkotlinx/datetime/format/DateFieldContainer;", "Lkotlinx/datetime/format/DayOfWeekNames;", "names", "<init>", "(Lkotlinx/datetime/format/DayOfWeekNames;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class DayOfWeekDirective extends NamedUnsignedIntFieldFormatDirective<DateFieldContainer> {
    public final DayOfWeekNames d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DayOfWeekDirective(DayOfWeekNames dayOfWeekNames) {
        super(DateFields.d, dayOfWeekNames.f75289a, "dayOfWeekName");
        dayOfWeekNames.getClass();
        GenericFieldSpec genericFieldSpec = DateFields.f75253a;
        this.d = dayOfWeekNames;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof DayOfWeekDirective) && Intrinsics.c(this.d.f75289a, ((DayOfWeekDirective) obj).d.f75289a);
    }

    public final int hashCode() {
        return this.d.f75289a.hashCode();
    }
}
