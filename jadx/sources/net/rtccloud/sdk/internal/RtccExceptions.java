package net.rtccloud.sdk.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class RtccExceptions {
    private static void hideInternal(RuntimeException runtimeException) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        if (stackTrace == null) {
            return;
        }
        for (int i2 = 0; i2 < stackTrace.length; i2++) {
            if (stackTrace[i2].getClassName().contains("net.rtccloud.sdk.internal")) {
                stackTrace[i2] = new StackTraceElement("****", "****", null, -1);
            }
        }
        runtimeException.setStackTrace(stackTrace);
    }

    public static IllegalArgumentException newIllegalArgumentException(String str) {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(str);
        hideInternal(illegalArgumentException);
        return illegalArgumentException;
    }

    public static IllegalStateException newIllegalStateException(String str) {
        IllegalStateException illegalStateException = new IllegalStateException(str);
        hideInternal(illegalStateException);
        return illegalStateException;
    }

    public static NullPointerException newNullPointerException(String str) {
        NullPointerException nullPointerException = new NullPointerException(str);
        hideInternal(nullPointerException);
        return nullPointerException;
    }

    public static RuntimeException newRuntimeException(String str) {
        RuntimeException runtimeException = new RuntimeException(str);
        hideInternal(runtimeException);
        return runtimeException;
    }

    public static RuntimeException newRuntimeException(Throwable th) {
        RuntimeException runtimeException = new RuntimeException(th);
        hideInternal(runtimeException);
        return runtimeException;
    }
}
