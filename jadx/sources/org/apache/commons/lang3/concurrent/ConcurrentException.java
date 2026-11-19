package org.apache.commons.lang3.concurrent;

/* JADX INFO: loaded from: classes3.dex */
public class ConcurrentException extends Exception {
    private static final long serialVersionUID = 6622707671812226130L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConcurrentException(String str, Throwable th) {
        super(str, th);
        ConcurrentUtils.a(th);
    }

    public ConcurrentException(String str) {
        super(str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConcurrentException(Throwable th) {
        super(th);
        ConcurrentUtils.a(th);
    }
}
