package com.networkbench.agent.impl.performance.a.e;

import android.os.Process;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static long a() {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/stat")), 1000);
            try {
                String line = bufferedReader2.readLine();
                bufferedReader2.close();
                String[] strArrSplit = line.split(" ");
                return Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[14]);
            } catch (Throwable unused) {
                bufferedReader = bufferedReader2;
                a(bufferedReader);
                return -1L;
            }
        } catch (Throwable unused2) {
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }
}
