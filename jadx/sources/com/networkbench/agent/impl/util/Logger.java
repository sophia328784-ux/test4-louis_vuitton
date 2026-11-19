package com.networkbench.agent.impl.util;

/* JADX INFO: loaded from: classes2.dex */
public class Logger {
    private static final String TAG_PREFFIC = "NBSAgent.";

    public static void debug(String str, String str2) {
        setTag(str);
        com.networkbench.agent.impl.c.j.a(str2);
    }

    public static void error(String str, String str2) {
        setTag(str);
        com.networkbench.agent.impl.c.j.e(str2);
    }

    public static void info(String str, String str2) {
        setTag(str);
        com.networkbench.agent.impl.c.j.b(str2);
    }

    private static void setTag(String str) {
    }

    public static void warning(String str, String str2) {
        setTag(str);
        com.networkbench.agent.impl.c.j.d(str2);
    }

    public static void error(String str, String str2, Throwable th) {
        setTag(str);
        com.networkbench.agent.impl.c.j.a(str2, th);
    }
}
