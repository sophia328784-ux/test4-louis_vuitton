package com.networkbench.agent.impl.performance.a.e;

import android.os.Process;
import android.system.Os;
import android.system.OsConstants;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f37722a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f37723b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f37724c = -1;

    public static long a() {
        int iB = b();
        if (iB <= 0) {
            return -1L;
        }
        return iB;
    }

    public static synchronized int b() {
        BufferedReader bufferedReader;
        Throwable th;
        try {
            int i2 = f37722a;
            if (i2 != 0) {
                return i2;
            }
            try {
                bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 50);
                int i3 = 0;
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.startsWith("processor")) {
                            i3++;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th3) {
                                com.networkbench.agent.impl.c.g.e("getCpuCoreCount error :" + th3.getMessage(), th3);
                            }
                        }
                        com.networkbench.agent.impl.c.g.e("getCpuCoreCount error :" + th.getMessage(), th);
                    }
                }
                bufferedReader.close();
                f37722a = i3;
            } catch (Throwable th4) {
                bufferedReader = null;
                th = th4;
            }
            return f37722a;
        } catch (Throwable th5) {
            throw th5;
        }
    }

    public static long c() {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/stat")), 1000);
            try {
                String line = bufferedReader2.readLine();
                bufferedReader2.close();
                String[] strArrSplit = line.split(" ");
                long j2 = Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[14]) + Long.parseLong(strArrSplit[15]) + Long.parseLong(strArrSplit[16]);
                d.a(bufferedReader2);
                return j2;
            } catch (Throwable unused) {
                bufferedReader = bufferedReader2;
                d.a(bufferedReader);
                return -1L;
            }
        } catch (Throwable unused2) {
        }
    }

    public static long d() {
        if (f37723b == -1) {
            long jSysconf = Os.sysconf(OsConstants._SC_CLK_TCK);
            if (jSysconf <= 0) {
                jSysconf = 1000;
            }
            f37723b = jSysconf;
        }
        return f37723b;
    }

    private static long e() {
        try {
            int i2 = Class.forName("libcore.io.OsConstants").getField("_SC_CLK_TCK").getInt(null);
            return ((Long) Class.forName("libcore.io.Os").getMethod("sysconf", Integer.TYPE).invoke(Class.forName("libcore.io.Libcore").getField("os").get(null), Integer.valueOf(i2))).longValue();
        } catch (Exception unused) {
            return 1000L;
        }
    }
}
