package com.appsflyer.sdk_base.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import defpackage.n2;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public abstract class ContentProviderFetcher<T> {
    protected final String authority;
    private final Executor backgroundExecutor;
    protected final Context context;
    protected final AFLoggerBase logger;
    private final String[] sig;
    private final FutureTask<T> task = new FutureTask<>(new n2(this, 4));

    public ContentProviderFetcher(Context context, AFLoggerBase aFLoggerBase, Executor executor, String str, String... strArr) {
        this.context = context;
        this.authority = str;
        this.logger = aFLoggerBase;
        this.sig = strArr;
        this.backgroundExecutor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$new$0() throws Exception {
        if (valid()) {
            return query();
        }
        return null;
    }

    public T get() {
        try {
            return this.task.get(500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            onError(e2, false);
            return null;
        }
    }

    public void onError(Throwable th, boolean z) {
        this.logger.e(LogTag.REFERRER, th.getMessage() != null ? th.getMessage() : "", th, false, z);
    }

    public abstract T query();

    public void start() {
        this.backgroundExecutor.execute(this.task);
    }

    public boolean valid() {
        try {
            ProviderInfo providerInfoResolveContentProvider = this.context.getPackageManager().resolveContentProvider(this.authority, 128);
            return providerInfoResolveContentProvider != null && Arrays.asList(this.sig).contains(AndroidExtensionsKt.signature(this.context.getPackageManager(), providerInfoResolveContentProvider.packageName));
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException | CertificateException e2) {
            onError(e2, false);
            return false;
        }
    }
}
