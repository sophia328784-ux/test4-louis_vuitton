package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class CompletionStateKt {
    public static final Object a(Object obj) {
        if (obj instanceof CompletedExceptionally) {
            Result.Companion companion = Result.INSTANCE;
            return ResultKt.a(((CompletedExceptionally) obj).f74648a);
        }
        Result.Companion companion2 = Result.INSTANCE;
        return obj;
    }

    public static final Object b(Object obj) {
        Throwable thA = Result.a(obj);
        return thA == null ? obj : new CompletedExceptionally(thA, false, 2, null);
    }
}
