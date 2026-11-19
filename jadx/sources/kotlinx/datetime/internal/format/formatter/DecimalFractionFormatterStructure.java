package kotlinx.datetime.internal.format.formatter;

import defpackage.b21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.datetime.internal.DecimalFraction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/datetime/internal/format/formatter/DecimalFractionFormatterStructure;", "T", "Lkotlinx/datetime/internal/format/formatter/FormatterStructure;", "Lkotlin/Function1;", "Lkotlinx/datetime/internal/DecimalFraction;", "number", "", "minDigits", "maxDigits", "", "zerosToAdd", "<init>", "(Lkotlin/jvm/functions/Function1;IILjava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DecimalFractionFormatterStructure<T> implements FormatterStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f75430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f75431b;

    public DecimalFractionFormatterStructure(Function1<? super T, DecimalFraction> function1, int i2, int i3, List<Integer> list) {
        function1.getClass();
        list.getClass();
        this.f75430a = function1;
        this.f75431b = list;
        if (1 > i2 || i2 >= 10) {
            b21.n(n00.m(i2, "The minimum number of digits (", ") is not in range 1..9"));
            throw null;
        }
        if (i2 > i3 || i3 >= 10) {
            b21.n(fc.f(i3, i2, "The maximum number of digits (", ") is not in range ", "..9"));
            throw null;
        }
    }
}
