package com.networkbench.nbslens.nbsnativecrashlib;

import android.text.TextUtils;
import defpackage.d21;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    public class a implements FilenameFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String[] f38785a;

        public a(String[] strArr) {
            this.f38785a = strArr;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (!str.startsWith("tombstone_")) {
                return false;
            }
            for (String str2 : this.f38785a) {
                if (str.endsWith(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    public class b implements Comparator<File> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    public class c implements FilenameFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String[] f38786a;

        public c(String[] strArr) {
            this.f38786a = strArr;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (!str.startsWith("tombstone_")) {
                return false;
            }
            for (String str2 : this.f38786a) {
                if (str.endsWith(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    private l() {
    }

    private static boolean a(String[] strArr) {
        File[] fileArrListFiles;
        String logDir = NBSNativeCrash.getLogDir();
        if (logDir == null) {
            return false;
        }
        File file = new File(logDir);
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles(new c(strArr))) == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : fileArrListFiles) {
            if (!f.b().d(file2)) {
                z = false;
            }
        }
        return z;
    }

    private static File[] b(String[] strArr) {
        String logDir = NBSNativeCrash.getLogDir();
        if (logDir == null) {
            return new File[0];
        }
        File file = new File(logDir);
        if (!file.exists() || !file.isDirectory()) {
            return new File[0];
        }
        File[] fileArrListFiles = file.listFiles(new a(strArr));
        if (fileArrListFiles == null) {
            return new File[0];
        }
        Arrays.sort(fileArrListFiles, new b());
        return fileArrListFiles;
    }

    public static boolean c(File file) {
        return file.getName().endsWith(n.l);
    }

    public static boolean d(File file) {
        return file.getName().endsWith(n.m);
    }

    public static File[] e() {
        return b(new String[]{n.l, n.m, n.n});
    }

    public static File[] f() {
        return b(new String[]{n.n});
    }

    public static File[] g() {
        return b(new String[]{n.l});
    }

    public static File[] h() {
        return b(new String[]{n.m});
    }

    public static boolean c() {
        return a(new String[]{n.l});
    }

    public static boolean d() {
        return a(new String[]{n.m});
    }

    public static boolean b() {
        return a(new String[]{n.n});
    }

    public static boolean b(File file) {
        return file.getName().endsWith(n.n);
    }

    public static boolean a(File file) {
        return f.b().d(file);
    }

    public static boolean a(String str) {
        return f.b().d(new File(str));
    }

    public static boolean a() {
        return a(new String[]{n.l, n.m, n.n});
    }

    public static boolean a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str3 == null) {
            return false;
        }
        return f.b().a(str, d21.l("\n\n", str2, ":\n", str3, "\n\n"));
    }
}
