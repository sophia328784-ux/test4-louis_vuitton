package com.google.firebase.crashlytics.internal.persistence;

import android.content.Context;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.ProcessDetailsProvider;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FileStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f35009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f35010c;
    public final File d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f35011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final File f35012f;
    public final File g;

    public FileStore(Context context) {
        String string;
        String strD = ProcessDetailsProvider.f34485a.c(context).d();
        this.f35008a = strD;
        File filesDir = context.getFilesDir();
        this.f35009b = filesDir;
        if (strD.isEmpty()) {
            string = ".com.google.firebase.crashlytics.files.v1";
        } else {
            StringBuilder sb = new StringBuilder(".crashlytics.v3");
            sb.append(File.separator);
            sb.append(strD.length() > 40 ? CommonUtils.i(strD) : strD.replaceAll("[^a-zA-Z0-9.]", "_"));
            string = sb.toString();
        }
        File file = new File(filesDir, string);
        c(file);
        this.f35010c = file;
        File file2 = new File(file, "open-sessions");
        c(file2);
        this.d = file2;
        File file3 = new File(file, "reports");
        c(file3);
        this.f35011e = file3;
        File file4 = new File(file, "priority-reports");
        c(file4);
        this.f35012f = file4;
        File file5 = new File(file, "native-reports");
        c(file5);
        this.g = file5;
    }

    public static synchronized void c(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return;
                }
                Logger logger = Logger.f34483b;
                file.toString();
                logger.a(3);
                file.delete();
            }
            if (!file.mkdirs()) {
                Logger logger2 = Logger.f34483b;
                file.toString();
                logger2.b();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean d(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                d(file2);
            }
        }
        return file.delete();
    }

    public static List e(Object[] objArr) {
        return objArr == null ? Collections.EMPTY_LIST : Arrays.asList(objArr);
    }

    public final void a(String str) {
        File file = new File(this.f35009b, str);
        if (file.exists() && d(file)) {
            Logger logger = Logger.f34483b;
            file.getPath();
            logger.a(3);
        }
    }

    public final File b(String str, String str2) {
        File file = new File(this.d, str);
        file.mkdirs();
        return new File(file, str2);
    }
}
