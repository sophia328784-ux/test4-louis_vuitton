package com.google.common.util.concurrent;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
final class LazyLogger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f33821a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f33822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Logger f33823c;

    public LazyLogger(Class cls) {
        this.f33822b = cls.getName();
    }

    public final Logger a() {
        Logger logger = this.f33823c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f33821a) {
            try {
                Logger logger2 = this.f33823c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.f33822b);
                this.f33823c = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
