package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;
import kotlinx.datetime.internal.format.UnsignedIntFieldFormatDirective;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/format/UtcOffsetSecondOfMinuteDirective;", "Lkotlinx/datetime/internal/format/UnsignedIntFieldFormatDirective;", "Lkotlinx/datetime/format/UtcOffsetFieldContainer;", "Lkotlinx/datetime/format/Padding;", "padding", "<init>", "(Lkotlinx/datetime/format/Padding;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class UtcOffsetSecondOfMinuteDirective extends UnsignedIntFieldFormatDirective<UtcOffsetFieldContainer> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Padding f75375e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UtcOffsetSecondOfMinuteDirective(Padding padding) {
        super(OffsetFields.f75335c, padding == Padding.ZERO ? 2 : 1, padding == Padding.SPACE ? 2 : null);
        padding.getClass();
        UnsignedFieldSpec unsignedFieldSpec = OffsetFields.f75333a;
        this.f75375e = padding;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UtcOffsetSecondOfMinuteDirective) {
            return this.f75375e == ((UtcOffsetSecondOfMinuteDirective) obj).f75375e;
        }
        return false;
    }

    public final int hashCode() {
        return this.f75375e.hashCode();
    }
}
