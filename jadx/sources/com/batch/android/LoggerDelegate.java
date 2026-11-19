package com.batch.android;

/* JADX INFO: loaded from: classes2.dex */
public interface LoggerDelegate {
    void debug(String str, String str2, Throwable th);

    void error(String str, String str2, Throwable th);

    void info(String str, String str2, Throwable th);

    void verbose(String str, String str2, Throwable th);

    void warn(String str, String str2, Throwable th);
}
