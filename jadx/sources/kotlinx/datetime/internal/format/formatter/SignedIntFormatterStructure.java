package kotlinx.datetime.internal.format.formatter;

import defpackage.b21;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B-\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/datetime/internal/format/formatter/SignedIntFormatterStructure;", "T", "Lkotlinx/datetime/internal/format/formatter/FormatterStructure;", "Lkotlin/Function1;", "", "number", "zeroPadding", "outputPlusOnExceededWidth", "<init>", "(Lkotlin/jvm/functions/Function1;ILjava/lang/Integer;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SignedIntFormatterStructure<T> implements FormatterStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f75434a;

    public SignedIntFormatterStructure(Function1<? super T, Integer> function1, int i2, Integer num) {
        function1.getClass();
        this.f75434a = function1;
        if (i2 < 0) {
            b21.n(n00.m(i2, "The minimum number of digits (", ") is negative"));
            throw null;
        }
        if (i2 <= 9) {
            return;
        }
        b21.n(n00.m(i2, "The minimum number of digits (", ") exceeds the length of an Int"));
        throw null;
    }
}
