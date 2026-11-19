package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.UnsignedIntFieldFormatDirective;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/format/DayDirective;", "Lkotlinx/datetime/internal/format/UnsignedIntFieldFormatDirective;", "Lkotlinx/datetime/format/DateFieldContainer;", "Lkotlinx/datetime/format/Padding;", "padding", "<init>", "(Lkotlinx/datetime/format/Padding;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class DayDirective extends UnsignedIntFieldFormatDirective<DateFieldContainer> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Padding f75286e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DayDirective(Padding padding) {
        super(DateFields.f75255c, padding == Padding.ZERO ? 2 : 1, padding == Padding.SPACE ? 2 : null);
        padding.getClass();
        GenericFieldSpec genericFieldSpec = DateFields.f75253a;
        this.f75286e = padding;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DayDirective) {
            return this.f75286e == ((DayDirective) obj).f75286e;
        }
        return false;
    }

    public final int hashCode() {
        return this.f75286e.hashCode();
    }
}
