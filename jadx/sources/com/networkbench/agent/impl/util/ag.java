package com.networkbench.agent.impl.util;

/* JADX INFO: loaded from: classes2.dex */
public class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f38313a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38314b = "StackTraceUtil";

    public static String a(int i2) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return (stackTrace == null || stackTrace.length <= i2) ? "" : stackTrace[i2].getClassName();
    }

    public static boolean b(int i2) {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace == null || stackTrace.length <= i2 + 1) {
                return false;
            }
            StringBuilder sb = new StringBuilder("methodName is:");
            int i3 = i2 - 1;
            sb.append(stackTrace[i3].getMethodName());
            sb.append(", className is:");
            sb.append(stackTrace[i3].getClassName());
            Logger.debug(f38314b, sb.toString());
            if (!stackTrace[i3].getMethodName().equals(stackTrace[i2].getMethodName())) {
                return false;
            }
            String className = stackTrace[i3].getClassName();
            String className2 = stackTrace[i2].getClassName();
            Logger.debug(f38314b, "topClassName:" + className + ", beindClassName:" + className2);
            return Class.forName(className).isAssignableFrom(Class.forName(className2));
        } catch (Throwable th) {
            Logger.error(f38314b, "error isInvokedParentAndChild", th);
            return false;
        }
    }

    public static void a() {
    }
}
