package com.googlecode.mp4parser.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Logger {
    public static Logger a(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new AndroidLogger(cls.getSimpleName()) : new JuliLogger(cls.getSimpleName());
    }

    public abstract void b(String str);
}
