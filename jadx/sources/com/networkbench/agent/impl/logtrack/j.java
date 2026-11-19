package com.networkbench.agent.impl.logtrack;

import java.io.File;
import java.io.FileFilter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f37510a = ".copy";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SimpleDateFormat f37511b = new SimpleDateFormat("yyyy-MM-dd");

    public class b implements FileFilter {
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return (file.isFile() && file.getName().contains(j.f37510a)) ? false : true;
        }
    }

    public static long a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            SimpleDateFormat simpleDateFormat = f37511b;
            return simpleDateFormat.parse(simpleDateFormat.format(new Date(jCurrentTimeMillis))).getTime();
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public class a implements Comparator<File> {
        private long a(String str) {
            try {
                if (str.contains(j.f37510a)) {
                    str = str.substring(0, str.lastIndexOf(46));
                }
                return Long.parseLong(str);
            } catch (Throwable th) {
                th.printStackTrace();
                return 0L;
            }
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            try {
                return a(file.getName()) > a(file2.getName()) ? 1 : -1;
            } catch (Throwable unused) {
            }
        }
    }

    public static String a(long j2) {
        return f37511b.format(new Date(j2));
    }

    public static void a(File[] fileArr) {
        Arrays.sort(fileArr, new a());
    }

    public static File[] a(File file) {
        return file.listFiles(new b());
    }
}
