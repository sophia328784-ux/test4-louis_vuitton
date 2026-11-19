package kotlinx.datetime.format;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.datetime.internal.format.DecimalFractionFieldFormatDirective;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\nB'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lkotlinx/datetime/format/FractionalSecondDirective;", "Lkotlinx/datetime/internal/format/DecimalFractionFieldFormatDirective;", "Lkotlinx/datetime/format/TimeFieldContainer;", "", "minDigits", "maxDigits", "", "zerosToAdd", "<init>", "(IILjava/util/List;)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FractionalSecondDirective extends DecimalFractionFieldFormatDirective<TimeFieldContainer> {
    public static final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final List f75291h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f75292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f75293f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/FractionalSecondDirective$Companion;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = CollectionsKt.P(0, 0, 0, 0, 0, 0, 0, 0, 0);
        f75291h = CollectionsKt.P(2, 1, 0, 2, 1, 0, 2, 1, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FractionalSecondDirective(int i2, int i3, List<Integer> list) {
        super(TimeFields.d, i2, i3, list);
        list.getClass();
        UnsignedFieldSpec unsignedFieldSpec = TimeFields.f75343a;
        this.f75292e = i2;
        this.f75293f = i3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FractionalSecondDirective)) {
            return false;
        }
        FractionalSecondDirective fractionalSecondDirective = (FractionalSecondDirective) obj;
        return this.f75292e == fractionalSecondDirective.f75292e && this.f75293f == fractionalSecondDirective.f75293f;
    }

    public final int hashCode() {
        return (this.f75292e * 31) + this.f75293f;
    }

    public /* synthetic */ FractionalSecondDirective(int i2, int i3, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i3, (i4 & 4) != 0 ? g : list);
    }
}
