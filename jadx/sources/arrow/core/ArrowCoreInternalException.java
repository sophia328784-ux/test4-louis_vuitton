package arrow.core;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002¨\u0006\u0003"}, d2 = {"Larrow/core/ArrowCoreInternalException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
public final class ArrowCoreInternalException extends RuntimeException {
    static {
        new ArrowCoreInternalException("Arrow-Core internal error. Please let us know and create a ticket at https://github.com/arrow-kt/arrow-core/issues/new/choose", null);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
