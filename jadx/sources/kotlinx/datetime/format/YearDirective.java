package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.SignedIntFieldFormatDirective;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/datetime/format/YearDirective;", "Lkotlinx/datetime/internal/format/SignedIntFieldFormatDirective;", "Lkotlinx/datetime/format/DateFieldContainer;", "Lkotlinx/datetime/format/Padding;", "padding", "", "isYearOfEra", "<init>", "(Lkotlinx/datetime/format/Padding;Z)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class YearDirective extends SignedIntFieldFormatDirective<DateFieldContainer> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Padding f75377f;
    public final boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YearDirective(Padding padding, boolean z) {
        super(DateFields.f75253a, Integer.valueOf(padding != Padding.ZERO ? 1 : 4), null, padding == Padding.SPACE ? 4 : null, 4);
        padding.getClass();
        GenericFieldSpec genericFieldSpec = DateFields.f75253a;
        this.f75377f = padding;
        this.g = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof YearDirective)) {
            return false;
        }
        YearDirective yearDirective = (YearDirective) obj;
        return this.f75377f == yearDirective.f75377f && this.g == yearDirective.g;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.g) + (this.f75377f.hashCode() * 31);
    }

    public /* synthetic */ YearDirective(Padding padding, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(padding, (i2 & 2) != 0 ? false : z);
    }
}
