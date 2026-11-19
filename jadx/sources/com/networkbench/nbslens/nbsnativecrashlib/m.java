package com.networkbench.nbslens.nbsnativecrashlib;

import android.os.Build;
import android.text.TextUtils;
import defpackage.o60;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    public static final String D = "memory near";
    public static final String H = "network info";
    public static final String I = "memory info";
    public static final String J = "other threads";
    public static final String q = "pid";
    public static final String r = "tid";
    public static final String s = "pname";
    public static final String t = "tname";
    public static final String u = "signal";
    public static final String v = "code";
    public static final String w = "fault addr";
    public static final String x = "nbs err msg";
    public static final String z = "registers";
    private static final Pattern O = Pattern.compile("^(.*):\\s'(.*?)'$");
    private static final Pattern P = Pattern.compile("^pid:\\s(.*),\\stid:\\s(.*),\\sname:\\s(.*)\\s+>>>\\s(.*)\\s<<<$");
    private static final Pattern Q = Pattern.compile("^pid:\\s(.*)\\s+>>>\\s(.*)\\s<<<$");
    private static final Pattern R = Pattern.compile("^signal\\s(.*),\\scode\\s(.*),\\sfault\\saddr\\s(.*)$");
    private static final Pattern S = Pattern.compile("^(\\d{20})_(.*)__(.*)$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f38787a = "Tombstone maker";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f38788b = "Crash type";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f38789c = "Start time";
    public static final String d = "Crash time";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f38790e = "App ID";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f38791f = "App version";
    public static final String g = "Rooted";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f38792h = "API level";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f38793i = "OS version";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f38794j = "Kernel version";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f38795k = "ABI list";
    public static final String l = "Manufacturer";
    public static final String m = "Brand";
    public static final String n = "Model";
    public static final String o = "Build fingerprint";
    public static final String p = "ABI";
    public static final String y = "Abort message";
    private static final Set<String> T = new HashSet(Arrays.asList(f38787a, f38788b, f38789c, d, f38790e, f38791f, g, f38792h, f38793i, f38794j, f38795k, l, m, n, o, p, y));
    public static final String A = "backtrace";
    public static final String B = "build id";
    public static final String C = "stack";
    public static final String E = "memory map";
    public static final String F = "logcat";
    public static final String G = "open files";
    public static final String K = "java stacktrace";
    public static final String L = "nbscrash error";
    public static final String N = "nbscrash error debug";
    private static final Set<String> U = new HashSet(Arrays.asList(A, B, C, E, F, G, K, L, N));
    public static final String M = "foreground";
    private static final Set<String> V = new HashSet(Arrays.asList(M));

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f38796a;

        static {
            int[] iArr = new int[b.values().length];
            f38796a = iArr;
            try {
                iArr[b.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38796a[b.HEAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38796a[b.SECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum b {
        UNKNOWN,
        HEAD,
        SECTION
    }

    private m() {
    }

    private static void a(Map<String, String> map, BufferedReader bufferedReader, boolean z2) throws IOException {
        int i2;
        StringBuilder sb = new StringBuilder();
        b bVar = b.UNKNOWN;
        String strA = z2 ? a(bufferedReader) : bufferedReader.readLine();
        int i3 = 1;
        String strG = null;
        String str = "";
        int i4 = strA == null ? 1 : 0;
        boolean z3 = false;
        boolean zEquals = false;
        while (i4 == 0) {
            String strA2 = z2 ? a(bufferedReader) : bufferedReader.readLine();
            int i5 = strA2 == null ? i3 : 0;
            int i6 = a.f38796a[bVar.ordinal()];
            if (i6 != i3) {
                int i7 = i3;
                if (i6 != 2) {
                    if (i6 == 3) {
                        if (strA.equals(str) || i5 != 0) {
                            if (V.contains(strG) && sb.length() > 0 && sb.charAt(sb.length() - 1) == '\n') {
                                sb.deleteCharAt(sb.length() - 1);
                            }
                            a(map, strG, sb.toString(), zEquals);
                            sb.setLength(0);
                            bVar = b.UNKNOWN;
                        } else {
                            if (z3) {
                                if (strG.equals(K) && strA.startsWith(" ")) {
                                    strA = strA.trim();
                                } else if (strA.startsWith("    ")) {
                                    strA = strA.substring(4);
                                }
                            }
                            sb.append(strA);
                            sb.append('\n');
                        }
                    }
                    i2 = i7;
                } else {
                    if (strA.startsWith("pid: ")) {
                        Matcher matcher = P.matcher(strA);
                        if (matcher.find() && matcher.groupCount() == 4) {
                            a(map, q, matcher.group(i7));
                            a(map, r, matcher.group(2));
                            a(map, t, matcher.group(3));
                            a(map, s, matcher.group(4));
                        } else {
                            Matcher matcher2 = Q.matcher(strA);
                            if (matcher2.find() && matcher2.groupCount() == 2) {
                                a(map, q, matcher2.group(1));
                                a(map, s, matcher2.group(2));
                            }
                        }
                    } else if (strA.startsWith("signal ")) {
                        Matcher matcher3 = R.matcher(strA);
                        if (matcher3.find() && matcher3.groupCount() == 3) {
                            a(map, u, matcher3.group(1));
                            a(map, v, matcher3.group(2));
                            a(map, w, matcher3.group(3));
                        }
                        a(map, x, strA);
                    } else {
                        Matcher matcher4 = O.matcher(strA);
                        if (matcher4.find() && matcher4.groupCount() == 2 && T.contains(matcher4.group(1))) {
                            a(map, matcher4.group(1), matcher4.group(2));
                        }
                    }
                    if (strA2 != null && (strA2.startsWith("    r0 ") || strA2.startsWith("    x0 ") || strA2.startsWith("    eax ") || strA2.startsWith("    rax "))) {
                        bVar = b.SECTION;
                        strG = z;
                        str = "";
                        z3 = true;
                        zEquals = false;
                    }
                    if (strA2 == null || strA2.isEmpty()) {
                        bVar = b.UNKNOWN;
                    }
                    i2 = 1;
                }
            } else if (strA.equals(n.d)) {
                bVar = b.HEAD;
                i2 = 1;
            } else if (strA.equals(n.f38803e)) {
                bVar = b.SECTION;
                sb.append(strA);
                sb.append('\n');
                str = n.f38804f;
                strG = J;
                i2 = 1;
                z3 = false;
                zEquals = false;
            } else {
                i2 = 1;
                if (strA.length() > 1 && strA.endsWith(":")) {
                    bVar = b.SECTION;
                    strG = o60.g(1, 0, strA);
                    if (U.contains(strG)) {
                        z3 = strG.equals(A) || strG.equals(B) || strG.equals(C) || strG.equals(E) || strG.equals(G) || strG.equals(K) || strG.equals(N);
                        zEquals = strG.equals(L);
                    } else {
                        if (!strG.equals(I)) {
                            if (strG.startsWith("memory near ")) {
                                sb.append(strA);
                                sb.append('\n');
                                strG = D;
                            } else {
                                z3 = false;
                                zEquals = false;
                            }
                        }
                        z3 = false;
                        str = "";
                        zEquals = true;
                    }
                    str = "";
                }
            }
            i3 = i2;
            strA = strA2;
            i4 = i5;
        }
    }

    public static Map<String, String> a(String str) throws IOException {
        return a(str, (String) null);
    }

    public static Map<String, String> a(String str, String str2) throws IOException {
        HashMap map = new HashMap();
        if (str != null) {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
            a((Map<String, String>) map, bufferedReader, true);
            bufferedReader.close();
        }
        if (str2 != null) {
            BufferedReader bufferedReader2 = new BufferedReader(new StringReader(str2));
            a((Map<String, String>) map, bufferedReader2, false);
            bufferedReader2.close();
        }
        a(map, str);
        if (TextUtils.isEmpty((String) map.get(f38791f))) {
            String strB = NBSNativeCrash.b();
            if (TextUtils.isEmpty(strB)) {
                strB = "unknown";
            }
            map.put(f38791f, strB);
        }
        a(map);
        return map;
    }

    private static void a(Map<String, String> map, String str) {
        String strG;
        if (str == null) {
            return;
        }
        if (TextUtils.isEmpty(map.get(d))) {
            map.put(d, new SimpleDateFormat(n.g, Locale.US).format(new Date(new File(str).lastModified())));
        }
        String str2 = map.get(f38789c);
        String str3 = map.get(f38791f);
        String str4 = map.get(s);
        String str5 = map.get(f38788b);
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4) || TextUtils.isEmpty(str5)) {
            String strSubstring = str.substring(str.lastIndexOf(47) + 1);
            if (!strSubstring.isEmpty() && strSubstring.startsWith("tombstone_")) {
                String strSubstring2 = strSubstring.substring(10);
                if (strSubstring2.endsWith(n.l)) {
                    if (TextUtils.isEmpty(str5)) {
                        map.put(f38788b, n.f38805h);
                    }
                    strG = o60.g(14, 0, strSubstring2);
                } else if (strSubstring2.endsWith(n.m)) {
                    if (TextUtils.isEmpty(str5)) {
                        map.put(f38788b, n.f38806i);
                    }
                    strG = o60.g(16, 0, strSubstring2);
                } else {
                    if (!strSubstring2.endsWith(n.n)) {
                        return;
                    }
                    if (TextUtils.isEmpty(str5)) {
                        map.put(f38788b, n.f38807j);
                    }
                    strG = o60.g(13, 0, strSubstring2);
                }
                if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                    Matcher matcher = S.matcher(strG);
                    if (matcher.find() && matcher.groupCount() == 3) {
                        if (TextUtils.isEmpty(str2)) {
                            map.put(f38789c, new SimpleDateFormat(n.g, Locale.US).format(new Date(Long.parseLong(matcher.group(1), 10) / 1000)));
                        }
                        if (TextUtils.isEmpty(str3)) {
                            map.put(f38791f, matcher.group(2));
                        }
                        if (TextUtils.isEmpty(str4)) {
                            map.put(s, matcher.group(3));
                        }
                    }
                }
            }
        }
    }

    private static void a(Map<String, String> map) {
        if (TextUtils.isEmpty(map.get(f38790e))) {
            map.put(f38790e, NBSNativeCrash.a());
        }
        if (TextUtils.isEmpty(map.get(f38787a))) {
            map.put(f38787a, Version.fullVersion);
        }
        if (TextUtils.isEmpty(map.get(f38792h))) {
            map.put(f38792h, String.valueOf(Build.VERSION.SDK_INT));
        }
        if (TextUtils.isEmpty(map.get(f38793i))) {
            map.put(f38793i, Build.VERSION.RELEASE);
        }
        if (TextUtils.isEmpty(map.get(o))) {
            map.put(n, Build.FINGERPRINT);
        }
        if (TextUtils.isEmpty(map.get(l))) {
            map.put(l, Build.MANUFACTURER);
        }
        if (TextUtils.isEmpty(map.get(m))) {
            map.put(m, Build.BRAND);
        }
        if (TextUtils.isEmpty(map.get(n))) {
            map.put(n, n.d());
        }
        if (TextUtils.isEmpty(map.get(f38795k))) {
            map.put(f38795k, n.a());
        }
    }

    private static String a(BufferedReader bufferedReader) throws IOException {
        try {
            bufferedReader.mark(2);
            for (int i2 = 0; i2 < 2; i2++) {
                try {
                    int i3 = bufferedReader.read();
                    if (i3 == -1) {
                        bufferedReader.reset();
                        return null;
                    }
                    if (i3 > 0) {
                        bufferedReader.reset();
                        return bufferedReader.readLine();
                    }
                } catch (Exception unused) {
                    bufferedReader.reset();
                    return bufferedReader.readLine();
                }
            }
            bufferedReader.reset();
            return null;
        } catch (Exception unused2) {
            return bufferedReader.readLine();
        }
    }

    public static Map<String, String> a(File file) throws IOException {
        return a(file.getAbsolutePath(), (String) null);
    }

    private static void a(Map<String, String> map, String str, String str2) {
        a(map, str, str2, false);
    }

    private static void a(Map<String, String> map, String str, String str2, boolean z2) {
        if (str == null || str.isEmpty() || str2 == null) {
            return;
        }
        String str3 = map.get(str);
        if (z2) {
            if (str3 != null) {
                str2 = str3.concat(str2);
            }
            map.put(str, str2);
        } else if (str3 == null || (str3.isEmpty() && !str2.isEmpty())) {
            map.put(str, str2);
        }
    }
}
