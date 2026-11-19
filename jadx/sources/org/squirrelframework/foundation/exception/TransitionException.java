package org.squirrelframework.foundation.exception;

/* JADX INFO: loaded from: classes5.dex */
public class TransitionException extends SquirrelRuntimeException {
    private static final long serialVersionUID = -3907699293556397027L;

    public TransitionException(Throwable th, ErrorCodes errorCodes, Object[] objArr) {
        super(th, errorCodes, objArr);
    }
}
