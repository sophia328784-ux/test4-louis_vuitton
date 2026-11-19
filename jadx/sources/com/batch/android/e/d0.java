package com.batch.android.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import defpackage.tr;
import defpackage.x5;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23089a = "PushImageCache";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f23090b = 5;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23091c = "batch_pushimg";

    public static void a(Context context, String str, Bitmap bitmap) {
        a(context);
        File file = new File(b(context));
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(a(context, str)));
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.close();
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e2) {
            t.c(f23089a, "Error while storing push image in cache (" + str + ")", e2);
        }
    }

    private static String b(Context context) {
        return context.getCacheDir() + "/batch_pushimg";
    }

    public static Bitmap b(Context context, String str) {
        return BitmapFactory.decodeFile(a(context, str));
    }

    private static String a(Context context, String str) {
        return tr.l(new StringBuilder(), b(context), "/", str, ".png");
    }

    public static String a(String str) {
        try {
            return o.a(str);
        } catch (Exception e2) {
            t.c(f23089a, "Error while computing MD5 identifier for url : " + str, e2);
            return null;
        }
    }

    private static void a(Context context) {
        File[] fileArrListFiles = new File(b(context)).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length < 5) {
            return;
        }
        Arrays.sort(fileArrListFiles, new x5(18));
        for (int i2 = 0; i2 < fileArrListFiles.length - 6; i2++) {
            File file = fileArrListFiles[i2];
            t.c(f23089a, "Delete file (" + file.getAbsolutePath() + ") cause we are reaching the push image cache limit");
            file.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(File file, File file2) {
        return Long.valueOf(file.lastModified()).compareTo(Long.valueOf(file2.lastModified()));
    }
}
