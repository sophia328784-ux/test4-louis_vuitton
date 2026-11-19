package com.networkbench.agent.impl.instrumentation.io;

import java.util.EventObject;

/* JADX INFO: loaded from: classes2.dex */
public final class NBSStreamCompleteEvent extends EventObject {
    private static final long serialVersionUID = 1;
    private final long bytes;
    private final Exception exception;

    public NBSStreamCompleteEvent(Object obj, long j2, Exception exc) {
        super(obj);
        this.bytes = j2;
        this.exception = exc;
    }

    public long getBytes() {
        return this.bytes;
    }

    public Exception getException() {
        return this.exception;
    }

    public boolean isError() {
        return this.exception != null;
    }

    public NBSStreamCompleteEvent(Object obj, long j2) {
        this(obj, j2, null);
    }
}
