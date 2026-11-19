package com.networkbench.agent.impl.performance.a.e;

import java.io.File;
import java.io.FilenameFilter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f37725a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f37726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f37727c;
    private static List<a> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static List<Integer> f37728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static List<Integer> f37729f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f37732a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<Integer> f37733b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<Long> f37734c = new ArrayList();

        public a(String str) {
            this.f37732a = str;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Method f37735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static Method f37736b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Method f37737c;
        private static Method d;

        static {
            try {
                for (Method method : Class.forName("android.os.SystemProperties").getMethods()) {
                    String name = method.getName();
                    if (name.equals("get")) {
                        f37735a = method;
                    } else if (name.equals("set")) {
                        f37736b = method;
                    } else if (name.equals("getLong")) {
                        f37737c = method;
                    } else if (name.equals("getInt")) {
                        d = method;
                    }
                }
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            }
        }

        public static String a(String str, String str2) {
            Method method = f37735a;
            if (method == null) {
                return str2;
            }
            try {
                return (String) method.invoke(null, str, str2);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                e2.printStackTrace();
                return str2;
            }
        }
    }

    public static int a() {
        if (f37725a == -1) {
            File[] fileArrListFiles = new File("/sys/devices/system/cpu").listFiles(new FilenameFilter() { // from class: com.networkbench.agent.impl.performance.a.e.c.1
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    return Pattern.matches("cpu[0-9]", str);
                }
            });
            f37725a = fileArrListFiles == null ? 1 : fileArrListFiles.length;
        }
        return f37725a;
    }

    public static synchronized List<Integer> b() {
        try {
            List<Integer> list = f37729f;
            if (list != null) {
                return list;
            }
            int iA = a();
            if (iA == -1) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < iA; i2++) {
                File[] fileArrListFiles = new File("/sys/devices/system/cpu/cpu" + i2 + "/cpuidle").listFiles(new FilenameFilter() { // from class: com.networkbench.agent.impl.performance.a.e.c.2
                    @Override // java.io.FilenameFilter
                    public final boolean accept(File file, String str) {
                        return Pattern.matches("state[0-9]", str);
                    }
                });
                arrayList.add(Integer.valueOf(fileArrListFiles == null ? 0 : fileArrListFiles.length));
            }
            f37729f = arrayList;
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static String c() {
        String str = f37727c;
        if (str != null) {
            return str;
        }
        String strA = b.a("ro.board.platform", "");
        f37727c = strA;
        return strA;
    }

    public static synchronized List<a> d() {
        try {
            List<a> list = d;
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            File[] fileArrListFiles = new File("/sys/devices/system/cpu/cpufreq").listFiles(new FilenameFilter() { // from class: com.networkbench.agent.impl.performance.a.e.c.3
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    return Pattern.matches("policy[0-9]", str);
                }
            });
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.networkbench.agent.impl.performance.a.e.c.4
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final int compare(File file, File file2) {
                        return file.getName().compareTo(file2.getName());
                    }
                });
                for (File file : fileArrListFiles) {
                    a aVar = new a(file.getName());
                    final ArrayList arrayList2 = new ArrayList();
                    final ArrayList arrayList3 = new ArrayList();
                    d.a(file.getAbsolutePath() + "/scaling_available_frequencies", new d.a() { // from class: com.networkbench.agent.impl.performance.a.e.c.5
                        @Override // com.networkbench.agent.impl.performance.a.e.d.a
                        public final boolean a(String str) {
                            if (str != null && !str.isEmpty()) {
                                for (String str2 : str.split(" ")) {
                                    arrayList2.add(Long.valueOf(Long.parseLong(str2)));
                                }
                            }
                            return true;
                        }
                    });
                    d.a(file.getAbsolutePath() + "/affected_cpus", new d.a() { // from class: com.networkbench.agent.impl.performance.a.e.c.6
                        @Override // com.networkbench.agent.impl.performance.a.e.d.a
                        public final boolean a(String str) {
                            if (str != null && !str.isEmpty()) {
                                for (String str2 : str.split(" ")) {
                                    arrayList3.add(Integer.valueOf(Integer.parseInt(str2)));
                                }
                            }
                            return true;
                        }
                    });
                    aVar.f37734c = arrayList2;
                    aVar.f37733b = arrayList3;
                    arrayList.add(aVar);
                }
            }
            d = arrayList;
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized List<Integer> e() {
        try {
            List<Integer> list = f37728e;
            if (list != null) {
                return list;
            }
            List<a> listD = d();
            ArrayList arrayList = new ArrayList();
            Iterator<a> it = listD.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(it.next().f37733b.size()));
            }
            f37728e = arrayList;
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static double f() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = com.networkbench.agent.impl.performance.a.e.a.c();
        try {
            Thread.sleep(360L);
        } catch (InterruptedException unused) {
        }
        return (((com.networkbench.agent.impl.performance.a.e.a.c() - jC) * 1000.0d) / (System.currentTimeMillis() - jCurrentTimeMillis)) / com.networkbench.agent.impl.performance.a.e.a.d();
    }
}
