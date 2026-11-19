package androidx.work;

/* JADX INFO: loaded from: classes.dex */
public abstract class Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f20261a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile LogcatLogger f20262b;

    public static class LogcatLogger extends Logger {
        public LogcatLogger(int i2) {
            super(i2);
        }
    }

    public Logger(int i2) {
    }

    public static Logger a() {
        LogcatLogger logcatLogger;
        synchronized (f20261a) {
            try {
                if (f20262b == null) {
                    f20262b = new LogcatLogger(3);
                }
                logcatLogger = f20262b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return logcatLogger;
    }

    public static String b(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }
}
