package com.batch.android.e;

/* JADX INFO: loaded from: classes2.dex */
public class n0 {
    public static int a(String str) {
        try {
            return Integer.parseInt(str.split("\\.")[0]);
        } catch (Exception e2) {
            t.c("Error parsing version strings: " + str, e2);
            return 0;
        }
    }
}
