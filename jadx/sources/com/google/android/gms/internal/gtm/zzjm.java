package com.google.android.gms.internal.gtm;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f30132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzji f30133c;

    public zzjm(Context context) {
        ThreadFactory threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactoryDefaultThreadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
        zzji zzjiVar = new zzji(context);
        this.f30131a = context;
        this.f30132b = executorServiceUnconfigurableExecutorService;
        this.f30133c = zzjiVar;
    }

    public static final byte[] b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i2 = inputStream.read(bArr, 0, 1024);
                    if (i2 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
            } catch (IOException unused) {
                zzao.a(5);
            } finally {
                inputStream.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused2) {
            zzao.a(5);
            return null;
        }
    }

    public final File a(String str) {
        return new File(this.f30131a.getDir("google_tagmanager", 0), "resource_".concat(String.valueOf(str)));
    }
}
