package com.airbnb.lottie.utils;

import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LogcatLogger f22287a = new LogcatLogger();

    public static void a(String str) {
        f22287a.getClass();
        HashSet hashSet = LogcatLogger.f22286a;
        if (hashSet.contains(str)) {
            return;
        }
        hashSet.add(str);
    }

    public static void b(String str, Throwable th) {
        f22287a.getClass();
        HashSet hashSet = LogcatLogger.f22286a;
        if (hashSet.contains(str)) {
            return;
        }
        hashSet.add(str);
    }
}
