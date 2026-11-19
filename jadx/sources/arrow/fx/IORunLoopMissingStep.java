package arrow.fx;

import arrow.fx.internal.ArrowInternalException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Larrow/fx/IORunLoopMissingStep;", "Larrow/fx/internal/ArrowInternalException;", "arrow-fx"}, k = 1, mv = {1, 4, 2})
public final class IORunLoopMissingStep extends ArrowInternalException {
    static {
        new IORunLoopMissingStep(null, 1, null);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
