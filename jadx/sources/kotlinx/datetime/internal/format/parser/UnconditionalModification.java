package kotlinx.datetime.internal.format.parser;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/datetime/internal/format/parser/UnconditionalModification;", "Output", "Lkotlinx/datetime/internal/format/parser/ParserOperation;", "Lkotlin/Function1;", "", "operation", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnconditionalModification<Output> implements ParserOperation<Output> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f75486a;

    public UnconditionalModification(Function1<? super Output, Unit> function1) {
        function1.getClass();
        this.f75486a = function1;
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    public final Object a(Copyable copyable, String str, int i2) {
        this.f75486a.invoke(copyable);
        ParseResult.f75458a.getClass();
        return Integer.valueOf(i2);
    }
}
