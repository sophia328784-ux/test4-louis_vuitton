package com.perfectcorp.perfectlib.internal;

import com.perfectcorp.common.PfCommons;

/* JADX INFO: loaded from: classes3.dex */
public final class SkipCallbackException extends RuntimeException {
    public SkipCallbackException(String str, Throwable th) {
        super(str);
        if (PfCommons.d) {
            initCause(th);
        }
        try {
            setStackTrace(new StackTraceElement[0]);
        } catch (Throwable unused) {
        }
    }

    public SkipCallbackException(String str) {
        super(str);
        try {
            setStackTrace(new StackTraceElement[0]);
        } catch (Throwable unused) {
        }
    }
}
