package org.squirrelframework.foundation.exception;

/* JADX INFO: loaded from: classes5.dex */
public class SquirrelRuntimeException extends RuntimeException {
    private static final long serialVersionUID = -4324278329515258777L;
    private int errorCodeId;
    private String errorMessage;
    private Throwable targetException;

    public SquirrelRuntimeException(ErrorCodes errorCodes, Object... objArr) {
        this.errorCodeId = errorCodes.getCode();
        this.errorMessage = String.format("%08d : %s.", Integer.valueOf(getErrorCodeId()), String.format(errorCodes.getDescription(), objArr));
    }

    public int getErrorCodeId() {
        return this.errorCodeId;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.errorMessage;
    }

    public Throwable getTargetException() {
        return this.targetException;
    }

    public SquirrelRuntimeException(Throwable th, ErrorCodes errorCodes) {
        this(errorCodes);
        this.targetException = th;
    }

    public SquirrelRuntimeException(ErrorCodes errorCodes) {
        this.errorCodeId = errorCodes.getCode();
        this.errorMessage = String.format("%08d : %s.", Integer.valueOf(getErrorCodeId()), errorCodes.getDescription());
    }

    public SquirrelRuntimeException(Throwable th, ErrorCodes errorCodes, Object... objArr) {
        this(errorCodes, objArr);
        this.targetException = th;
    }
}
