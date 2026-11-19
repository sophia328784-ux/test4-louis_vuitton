package com.linkplay.bonjour.utils;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadUtils {
    public static final void sleep(long j2) {
        try {
            Thread.sleep(j2);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
    }
}
