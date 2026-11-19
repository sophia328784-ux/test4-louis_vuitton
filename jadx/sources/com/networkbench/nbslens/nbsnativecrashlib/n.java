package com.networkbench.nbslens.nbsnativecrashlib;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import android.text.TextUtils;
import com.networkbench.agent.impl.crash.NativeCrashInterface;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.fc;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38800a = "%21s %8s\n";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38801b = "%21s %8s %21s %8s\n";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f38802c = "NBSAgent";
    public static final String d = "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f38803e = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f38804f = "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++";
    public static final String g = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f38805h = "java";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f38806i = "native";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f38807j = "anr";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f38808k = "tombstone";
    public static final String l = ".java.nbscrash";
    public static final String m = ".native.nbscrash";
    public static final String n = ".anr.nbscrash";
    public static final String o = ".trace.nbscrash";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String f38809a = "Rom";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f38810b = "MIUI";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f38811c = "EMUI";
        public static final String d = "FLYME";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f38812e = "OPPO";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f38813f = "SMARTISAN";
        public static final String g = "VIVO";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final String f38814h = "QIKU";

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final String f38815i = "ro.miui.ui.version.name";

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final String f38816j = "ro.build.version.emui";

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final String f38817k = "ro.build.version.opporom";
        private static final String l = "ro.smartisan.version";
        private static final String m = "ro.vivo.os.version";
        private static String n;
        private static String o;
    }

    private n() {
    }

    public static boolean a(Context context, long j2) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a);
        if (activityManager == null) {
            return false;
        }
        int iMyPid = Process.myPid();
        long j3 = j2 / 500;
        for (int i2 = 0; i2 < j3; i2++) {
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState != null) {
                NBSNativeCrash.c().a("NBSAgent", "processErrorList is NOT null !!!!, i = " + i2);
                for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                    i iVarC = NBSNativeCrash.c();
                    StringBuilder sb = new StringBuilder("errorStateInfo.pid = ");
                    fc.x(processErrorStateInfo.pid, iMyPid, ", my pid = ", ", errorStateInfo.condition = ", sb);
                    sb.append(processErrorStateInfo.condition);
                    iVarC.a("NBSAgent", sb.toString());
                    if (processErrorStateInfo.pid == iMyPid && processErrorStateInfo.condition == 2) {
                        return true;
                    }
                }
            } else {
                NBSNativeCrash.c().a("NBSAgent", "processErrorList is null !!!! poll = " + j3 + ", i = " + i2);
            }
            try {
                Thread.sleep(500L);
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static String b(String str) {
        return a(str, 0);
    }

    public static String c() {
        return "";
    }

    public static String d() {
        return "";
    }

    public static String e() {
        return "";
    }

    public static String f() {
        StringBuilder sb = new StringBuilder(" Process Summary (From: android.os.Debug.MemoryInfo)\n");
        Locale locale = Locale.US;
        sb.append(String.format(locale, f38800a, "", "Pss(KB)"));
        sb.append(String.format(locale, f38800a, "", "------"));
        try {
            Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            sb.append(String.format(locale, f38800a, "Java Heap:", memoryInfo.getMemoryStat("summary.java-heap")));
            sb.append(String.format(locale, f38800a, "Native Heap:", memoryInfo.getMemoryStat("summary.native-heap")));
            sb.append(String.format(locale, f38800a, "Code:", memoryInfo.getMemoryStat("summary.code")));
            sb.append(String.format(locale, f38800a, "Stack:", memoryInfo.getMemoryStat("summary.stack")));
            sb.append(String.format(locale, f38800a, "Graphics:", memoryInfo.getMemoryStat("summary.graphics")));
            sb.append(String.format(locale, f38800a, "Private Other:", memoryInfo.getMemoryStat("summary.private-other")));
            sb.append(String.format(locale, f38800a, "System:", memoryInfo.getMemoryStat("summary.system")));
            sb.append(String.format(locale, f38801b, "TOTAL:", memoryInfo.getMemoryStat("summary.total-pss"), "TOTAL SWAP:", memoryInfo.getMemoryStat("summary.total-swap")));
        } catch (Exception e2) {
            NBSNativeCrash.c().b("NBSAgent", "Util getProcessMemoryInfo failed", e2);
        }
        return sb.toString();
    }

    public static boolean g() {
        try {
            Map agentInfo = NativeCrashInterface.getAgentInfo();
            if (agentInfo.containsKey("debug")) {
                return ((Boolean) agentInfo.get("debug")).booleanValue();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String b() {
        return "open files:\n";
    }

    public static String a(Context context, int i2) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader("/proc/" + i2 + "/cmdline"));
                try {
                    String line = bufferedReader.readLine();
                    if (!TextUtils.isEmpty(line)) {
                        String strTrim = line.trim();
                        if (!TextUtils.isEmpty(strTrim)) {
                            try {
                                bufferedReader.close();
                            } catch (Exception unused) {
                            }
                            return strTrim;
                        }
                    }
                    bufferedReader.close();
                } catch (Exception unused2) {
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused4) {
            }
        } catch (Exception unused5) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return null;
    }

    public static String a() {
        return TextUtils.join(",", Build.SUPPORTED_ABIS);
    }

    public static String a(File file) {
        if (!file.exists()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int i2 = fileInputStream.read(bArr, 0, 1024);
                if (i2 != -1) {
                    messageDigest.update(bArr, 0, i2);
                } else {
                    fileInputStream.close();
                    return String.format("%032x", new BigInteger(1, messageDigest.digest()));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String a(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            str = null;
        }
        return TextUtils.isEmpty(str) ? "unknown" : str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v4 */
    private static String a(String str, int i2) throws Throwable {
        ?? r2;
        StringBuilder sb = new StringBuilder();
        ?? r1 = 0;
        r1 = 0;
        try {
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
                    int i3 = 0;
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            String strTrim = line.trim();
                            if (strTrim.length() > 0) {
                                i3++;
                                if (i2 == 0 || i3 <= i2) {
                                    sb.append("  ");
                                    sb.append(strTrim);
                                    sb.append("\n");
                                }
                            }
                        } catch (Exception e2) {
                            e = e2;
                            r1 = bufferedReader;
                            NBSNativeCrash.c().b("NBSAgent", "Util getInfo(" + str + ") failed", e);
                            if (r1 != 0) {
                                r1.close();
                                r1 = r1;
                            }
                            return sb.toString();
                        } catch (Throwable th) {
                            th = th;
                            r2 = bufferedReader;
                            if (r2 != 0) {
                                try {
                                    r2.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th;
                        }
                    }
                    if (i2 > 0 && i3 > i2) {
                        sb.append("  ......\n");
                        sb.append("  (number of records: ");
                        sb.append(i3);
                        sb.append(")\n");
                    }
                    bufferedReader.close();
                    r1 = i3;
                } catch (Exception unused2) {
                }
            } catch (Exception e3) {
                e = e3;
            }
            return sb.toString();
        } catch (Throwable th2) {
            th = th2;
            r2 = r1;
        }
    }

    public static boolean a(String str) {
        File file = new File(str);
        try {
            if (!file.exists()) {
                file.mkdirs();
                return file.exists() && file.isDirectory();
            }
            return file.isDirectory();
        } catch (Exception unused) {
            return false;
        }
    }

    private static void a(int i2, StringBuilder sb, String str, int i3, char c2) {
    }

    public static String a(Date date, Date date2, String str, String str2, String str3) {
        return "";
    }

    public static String a(int i2, int i3, int i4) {
        Process.myPid();
        return "";
    }

    public static String a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return str2;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return str2;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return str2;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return str2;
        }
    }
}
