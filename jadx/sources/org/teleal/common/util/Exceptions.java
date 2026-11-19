package org.teleal.common.util;

/* JADX INFO: loaded from: classes5.dex */
public class Exceptions {
    public static Throwable a(Throwable th) {
        Throwable th2 = th;
        while (th != null) {
            th2 = th;
            th = th.getCause();
        }
        return th2;
    }
}
