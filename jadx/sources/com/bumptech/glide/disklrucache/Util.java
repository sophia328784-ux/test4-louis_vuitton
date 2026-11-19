package com.bumptech.glide.disklrucache;

import defpackage.a61;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
abstract class Util {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f24347a = Charset.forName("US-ASCII");

    static {
        Charset.forName("UTF-8");
    }

    public static void a(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            a61.n(file, "not a readable directory: ");
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                a(file2);
            }
            if (!file2.delete()) {
                a61.n(file2, "failed to delete file: ");
                return;
            }
        }
    }
}
