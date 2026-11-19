package arrow.core;

import defpackage.o60;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Larrow/core/ShortCircuit;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "", "value", "<init>", "(Ljava/lang/Object;)V", "arrow-core-data"}, k = 1, mv = {1, 4, 2})
public final class ShortCircuit extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f20609b;

    public ShortCircuit(Object obj) {
        super(null, null);
        this.f20609b = obj;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return o60.r(new StringBuilder("ShortCircuit("), this.f20609b, ')');
    }
}
