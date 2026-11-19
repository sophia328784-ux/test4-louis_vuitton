package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.NamedUnsignedIntFieldFormatDirective;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/format/MonthNameDirective;", "Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective;", "Lkotlinx/datetime/format/DateFieldContainer;", "Lkotlinx/datetime/format/MonthNames;", "names", "<init>", "(Lkotlinx/datetime/format/MonthNames;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class MonthNameDirective extends NamedUnsignedIntFieldFormatDirective<DateFieldContainer> {
    public final MonthNames d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MonthNameDirective(MonthNames monthNames) {
        super(DateFields.f75254b, monthNames.f75331a, "monthName");
        monthNames.getClass();
        GenericFieldSpec genericFieldSpec = DateFields.f75253a;
        this.d = monthNames;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof MonthNameDirective) && Intrinsics.c(this.d.f75331a, ((MonthNameDirective) obj).d.f75331a);
    }

    public final int hashCode() {
        return this.d.f75331a.hashCode();
    }
}
