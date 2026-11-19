package kotlinx.datetime.internal.format;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0000*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\u0006\u0010\u0004\u001a\u00028\u0001\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/datetime/internal/format/ComparisonPredicate;", "T", "E", "Lkotlinx/datetime/internal/format/Predicate;", "expectedValue", "Lkotlin/Function1;", "getter", "<init>", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ComparisonPredicate<T, E> implements Predicate<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f75387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f75388b;

    public ComparisonPredicate(E e2, Function1<? super T, ? extends E> function1) {
        function1.getClass();
        this.f75387a = e2;
        this.f75388b = function1;
    }

    @Override // kotlinx.datetime.internal.format.Predicate
    public final boolean test(Object obj) {
        return Intrinsics.c(this.f75388b.invoke(obj), this.f75387a);
    }
}
