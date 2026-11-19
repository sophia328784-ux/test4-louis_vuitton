package com.sightcall.pratik.logs;

import android.util.Log;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0087\bJ\u001d\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0087\bJ\u001d\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0087\bJ\u001d\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0087\bJ\u001d\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0087\bJ\u001d\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0087\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/pratik/logs/Logger;", "", "<init>", "()V", "Tag", "", "getTag", "()Ljava/lang/String;", "v", "", "message", "throwable", "", NBSSpanMetricUnit.Day, "i", "w", "e", "wtf", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Logger {
    public static final Logger INSTANCE = new Logger();
    private static final String Tag = "Logger";

    private Logger() {
    }

    public static /* synthetic */ void d$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        str.getClass();
        logger.getTag();
    }

    public static /* synthetic */ void e$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        str.getClass();
        logger.getTag();
    }

    public static /* synthetic */ void i$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        str.getClass();
        logger.getTag();
    }

    public static /* synthetic */ void v$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        str.getClass();
        logger.getTag();
    }

    public static /* synthetic */ void w$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        str.getClass();
        logger.getTag();
    }

    public static /* synthetic */ void wtf$default(Logger logger, String str, Throwable th, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            th = null;
        }
        str.getClass();
        Log.wtf(logger.getTag(), str, th);
    }

    public final void d(String message, Throwable throwable) {
        message.getClass();
        getTag();
    }

    public final void e(String message, Throwable throwable) {
        message.getClass();
        getTag();
    }

    public final String getTag() {
        return Tag;
    }

    public final void i(String message, Throwable throwable) {
        message.getClass();
        getTag();
    }

    public final void v(String message, Throwable throwable) {
        message.getClass();
        getTag();
    }

    public final void w(String message, Throwable throwable) {
        message.getClass();
        getTag();
    }

    public final void wtf(String str) {
        str.getClass();
        Log.wtf(getTag(), str, null);
    }

    public final void d(String str) {
        str.getClass();
        getTag();
    }

    public final void e(String str) {
        str.getClass();
        getTag();
    }

    public final void i(String str) {
        str.getClass();
        getTag();
    }

    public final void v(String str) {
        str.getClass();
        getTag();
    }

    public final void w(String str) {
        str.getClass();
        getTag();
    }

    public final void wtf(String message, Throwable throwable) {
        message.getClass();
        Log.wtf(getTag(), message, throwable);
    }
}
