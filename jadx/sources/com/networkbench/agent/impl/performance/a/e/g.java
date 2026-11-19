package com.networkbench.agent.impl.performance.a.e;

import android.os.Process;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f37739a = -1;

    public static ArrayList<Long> a() {
        ArrayList<Long> arrayList = new ArrayList<>();
        for (File file : new File("/proc/self/task/").listFiles(new FilenameFilter() { // from class: com.networkbench.agent.impl.performance.a.e.g.1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str) {
                try {
                    Long.parseLong(str);
                    return true;
                } catch (NumberFormatException unused) {
                    return false;
                }
            }
        })) {
            arrayList.add(Long.valueOf(Long.parseLong(file.getName())));
        }
        return arrayList;
    }

    public static int b() {
        if (f37739a == -1) {
            f37739a = Process.myPid();
        }
        return f37739a;
    }
}
