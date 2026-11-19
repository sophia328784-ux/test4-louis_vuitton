package com.networkbench.agent.impl.crash;

import com.networkbench.agent.impl.util.r;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.cj;
import defpackage.z81;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes2.dex */
public final class i {
    private static final int d = 32768;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f36660c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f36658a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f36659b = 50;

    public static class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private InputStream f36661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private StringBuffer f36662b;

        public a(InputStream inputStream, StringBuffer stringBuffer) {
            this.f36661a = inputStream;
            this.f36662b = stringBuffer;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f36661a));
                int length = 32768;
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null || (length = length - line.getBytes("UTF-8").length) < 0) {
                            break;
                        }
                        this.f36662b.append(line);
                        this.f36662b.append("\n");
                    } catch (IOException unused) {
                        break;
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        throw th;
                    }
                    z81.k(new StringBuilder("NBSCrashSystemLog run  has an error : "), th);
                }
                try {
                    bufferedReader.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (Throwable th2) {
                z81.k(new StringBuilder("NBSCrashSystemLog run  has an error : "), th2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0085  */
    /* JADX WARN: Code duplicated, block: B:23:0x008b  */
    public static String a() {
        if (!r.q) {
            f36660c.a("logcat's switch was disable !");
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = f36659b;
        if (i2 > 100) {
            i2 = 100;
        }
        String str = f36658a;
        if (!a(str)) {
            f36658a = "*:W";
            f36660c.a("LOG_FILTER's format was wrong,set filter to *:W  !");
        }
        String[] strArr = {m.F, "-t", cj.d(i2, ""), str};
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec(strArr);
            new a(processExec.getInputStream(), stringBuffer).start();
            new a(processExec.getErrorStream(), stringBuffer).start();
            processExec.waitFor();
        } catch (Throwable th) {
            try {
                f36660c.a("Error reading logcat output!" + th.getLocalizedMessage());
                if (processExec != null) {
                }
                return stringBuffer.length() > 32768 ? stringBuffer.substring(0, 32768) : stringBuffer.toString();
            } catch (Throwable th2) {
                if (processExec != null) {
                    processExec.destroy();
                }
                throw th2;
            }
        }
        processExec.destroy();
        if (stringBuffer.length() > 32768) {
        }
    }

    private static boolean a(String str) {
        String[] strArr = {"*:S", "*:V", "*:D", "*:I", "*:W", "*:E"};
        if (!str.contains("*:")) {
            return true;
        }
        for (int i2 = 0; i2 < 6; i2++) {
            if (str.trim().endsWith(strArr[i2])) {
                return true;
            }
        }
        return false;
    }
}
