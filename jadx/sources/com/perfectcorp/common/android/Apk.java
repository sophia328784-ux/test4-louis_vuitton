package com.perfectcorp.common.android;

import android.content.Context;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.io.a;
import com.perfectcorp.common.zip.c;
import com.perfectcorp.thirdparty.com.google.common.base.Predicates;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import java.io.File;
import java.io.InputStream;
import java.util.Arrays;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Apk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentLinkedQueue f39159a = new ConcurrentLinkedQueue();

    public static ImmutableList a(Context context) {
        ImmutableSet immutableSetQ = ImmutableSet.q(f39159a);
        FluentIterable fluentIterableA = FluentIterable.a(context.getApplicationInfo().sourceDir, new String[0]);
        if (context.getApplicationInfo().splitSourceDirs != null && context.getApplicationInfo().splitSourceDirs.length > 0) {
            fluentIterableA = FluentIterable.h(fluentIterableA.f(), Arrays.asList(context.getApplicationInfo().splitSourceDirs));
        }
        return FluentIterable.h(immutableSetQ, fluentIterableA.i(Predicates.e(Predicates.d(immutableSetQ)))).p();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(Context context, String str, File file) throws Throwable {
        a aVar;
        ImmutableList immutableListA = a(context);
        String strConcat = "assets/".concat(str);
        for (int i2 = 0; i2 < immutableListA.size(); i2++) {
            try {
                String str2 = (String) immutableListA.get(i2);
                ZipFile zipFile = new ZipFile(str2);
                try {
                    continue;
                    com.perfectcorp.common.zip.a.a(zipFile, strConcat, file);
                    f39159a.add(str2);
                    zipFile.close();
                    return;
                } catch (Throwable th) {
                    try {
                        continue;
                        zipFile.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (c.b unused) {
            }
        }
        InputStream inputStream = null;
        try {
            InputStream inputStreamOpen = context.getApplicationContext().getAssets().open(str);
            try {
                aVar = new a(file);
                try {
                    IO.c(inputStreamOpen, aVar);
                    aVar.f39267e = true;
                    IO.b(inputStreamOpen);
                    aVar.close();
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = inputStreamOpen;
                    IO.b(inputStream);
                    if (aVar != null) {
                        aVar.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                aVar = null;
            }
        } catch (Throwable th5) {
            th = th5;
            aVar = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InputStream c(Context context, String str) {
        ImmutableList immutableListA = a(context);
        String strConcat = "assets/".concat(str);
        for (int i2 = 0; i2 < immutableListA.size(); i2++) {
            try {
                String str2 = (String) immutableListA.get(i2);
                ZipFile zipFile = new ZipFile(str2);
                try {
                    continue;
                    c cVarC = c.c(zipFile, strConcat, true);
                    f39159a.add(str2);
                    return cVarC;
                } catch (Throwable th) {
                    try {
                        zipFile.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            } catch (c.b unused2) {
            }
        }
        return context.getApplicationContext().getAssets().open(str);
    }
}
